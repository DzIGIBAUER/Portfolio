extends KinematicBody2D

const SPEED = 50
const GRAVITY = 2

onready var col_radius = $CollisionShape2D.shape.radius

onready var navigation_agent: = $NavigationAgent2D
onready var rays_down: = $Down
onready var rays_left: = $Left
onready var rays_right: = $Right
onready var rays_up: = $Up
onready var ray_move: = $Move/RayCast2D

var velocity = Vector2.ZERO

var _last_point_idx = null

func _ready() -> void:
	$NavigationAgent2D.connect("path_point_changed", self, "_nav_agent_path_point_reached")

func _physics_process(delta: float) -> void:
	
	if not (is_on_floor() or is_on_wall() or is_on_ceiling()):
		velocity.y += GRAVITY
	
	else:
		if not navigation_agent.is_navigation_finished():
			var move_dir = global_position.direction_to(navigation_agent.get_next_location())
			
			if not _last_point_idx:
				if global_position.distance_to(navigation_agent.get_final_location()) > 5.0:
					velocity = move_dir * SPEED
				else:
					velocity = Vector2.ZERO
			else:
				var action = navigation_agent.get_path_point_action(_last_point_idx)
				
				if action == navigation_agent.ACTION.JUMP:
					var target_point =  navigation_agent.get_path_point(_last_point_idx+1)
					if not target_point: target_point = navigation_agent.get_final_location()
					
					var dist = global_position.distance_to(target_point)
					velocity += move_dir * Vector2.UP * dist
	
	
	velocity = move_and_slide(velocity, Vector2.UP)


## Sets navigation agent's target location.
func set_target_position(target_pos: Vector2) -> void:
	navigation_agent.set_target_location(target_pos)


func is_on_floor() -> bool:
	return _any_ray_hits(rays_down)


func is_on_wall() -> bool:
	return _any_ray_hits(rays_left) or _any_ray_hits(rays_right)

func is_on_ceiling() -> bool:
	return _any_ray_hits(rays_up)


func can_move(next_pos: Vector2) -> bool:
	
	#ray_move.global_position = next_pos
	#ray_move.force_raycast_update()
	
	return ray_move.is_colliding()

func _any_ray_hits(rays_parent: Node2D) -> bool:
	for ray in rays_parent.get_children():
		ray = ray as RayCast2D
		
		if ray.is_colliding():
			return true
	
	return false


func _nav_agent_path_point_reached(path_point):
	_last_point_idx = path_point




