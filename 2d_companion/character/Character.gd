extends KinematicBody2D

const SPEED = 4500

export(NodePath) var line_node_path
onready var line_node: = get_node(line_node_path) as Line2D

onready var navigation_agent: = $NavigationAgent2D


func _physics_process(delta: float) -> void:
	
	var velocity = Vector2.ZERO
	
	if not navigation_agent.is_navigation_finished():
		var move_direction = position.direction_to(navigation_agent.get_next_location())
		velocity += move_direction * SPEED * delta
		navigation_agent.set_velocity(velocity)
		
		_update_line()
	
	
	velocity = move_and_slide(velocity, Vector2.UP, true)

## Sets navigation agent's target location.
func set_target_position(target_pos: Vector2) -> void:
	navigation_agent.set_target_location(target_pos)

## Updates line that shows navigation agent's path.
func _update_line():
	line_node.clear_points()
	
	for point in navigation_agent.get_nav_path():
		line_node.add_point(line_node.to_local(point))




