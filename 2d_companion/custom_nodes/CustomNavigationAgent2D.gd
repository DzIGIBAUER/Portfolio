extends NavigationAgent2D
class_name CharacterNavigationAgent2D

const STEP: int = 5
const _RAYS_CONTAINER_NAME: String = "RaysContainer"

enum ACTION {
	MOVE,
	JUMP,
}

signal path_point_changed(point, action)
var _last_path_point = null

onready var parent = get_parent()

var _path_points: = PoolVector2Array([])
var _path_point_actions: = PoolIntArray([])



func _ready():
	connect("path_changed", self, "_generate_adjusted_path")


func _physics_process(delta) -> void:
	_update_last_path_point()


func get_path_point_action(point_index: int):
	if point_index < _path_point_actions.size():
		return _path_point_actions[point_index]

func get_path_point(point_index: int):
	if point_index < _path_points.size():
		return _path_points[point_index]

# Override set_target_location so that target_pos cant
# be far away from a platform.
func set_target_location(target_pos: Vector2) -> void:
	var final_target_pos: = target_pos
	var min_dist: float
	
	for polygon_2d in get_tree().get_nodes_in_group("platforms"):
		polygon_2d = polygon_2d as Polygon2D
		
		var vertices = polygon_2d.polygon
		
		for i in range(vertices.size()):
			var a = vertices[i]
			var b: Vector2
			
			if i == vertices.size()-1:
				b = vertices[0]
			else:
				b = vertices[i+1]
			
			a = polygon_2d.to_global(a)
			b = polygon_2d.to_global(b)
			
			var point = Geometry.get_closest_point_to_segment_2d(target_pos, a, b)
			var dist = target_pos.distance_squared_to(point)
			
			if not min_dist or dist < min_dist:
				min_dist = dist
				final_target_pos = point
			
	.set_target_location(final_target_pos)


func _generate_adjusted_path():
	var rays_container = $"/root/".get_node_or_null(_RAYS_CONTAINER_NAME)
	if not rays_container:
		rays_container = Node2D.new()
		rays_container.name = _RAYS_CONTAINER_NAME
		$"/root/".add_child(rays_container)
	else:
		for chn in rays_container.get_children(): rays_container.remove_child(chn)
	
	_path_points.resize(0)
	_path_point_actions.resize(0)
	_last_path_point = null
	
	$NavigationPathVisualizer.clear_path_points()
	
	var nav_path: = get_nav_path()
	
	var last_type = null
	
	for i in range(nav_path.size()):
		var a: Vector2 = nav_path[i]
		var b: Vector2 = get_final_location() if i == nav_path.size()-1 else nav_path[i+1]
		
		var distance = a.distance_to(b)
		var distance_floor = floor(distance)
		
		var cast_to = Vector2.DOWN * 50
		
		for j in range(0, distance_floor + STEP, STEP):
			if not _path_point_actions.empty():
				last_type = _path_point_actions[-1]
			
			var ray_pos = a.move_toward(b, j*STEP)
			
			var ray = RayCast2D.new()
			ray.enabled = true
			ray.cast_to = cast_to
			ray.global_position = ray_pos
			rays_container.add_child(ray)
			
			ray.force_raycast_update()
			
			if ray.is_colliding():
				if last_type != ACTION.MOVE:
					_add_path_point(ray_pos, ACTION.MOVE)
			else:
				if last_type != ACTION.JUMP:
					_add_path_point(ray_pos, ACTION.JUMP)


func _add_path_point(pos: Vector2, type: int) -> void:
	_path_points.append(pos)
	_path_point_actions.append(type)
	$NavigationPathVisualizer.add_path_point(pos, type)


func _update_last_path_point() -> void:
	var path_point = null
	if not is_navigation_finished():
		var min_dist = null
		var closest = null
		
		for i in range(_path_points.size()):
			var a: Vector2 = _path_points[i]
			var b: Vector2 = get_final_location() if i == _path_points.size()-1 else _path_points[i+1]
			
			var point = Geometry.get_closest_point_to_segment_2d(parent.global_position, a, b)
			var distance = parent.global_position.distance_to(point)
			if not min_dist or distance < min_dist:
				min_dist = distance
				closest = i
		
		path_point = closest
	
	if path_point != _last_path_point:
		emit_signal("path_point_changed", path_point)
	_last_path_point = path_point





