extends Node2D

var _path_points: = PoolVector2Array([])
var _path_colors: = PoolColorArray([])

var _colors: = {
	CharacterNavigationAgent2D.ACTION.MOVE: ColorN("orange"),
	CharacterNavigationAgent2D.ACTION.JUMP: ColorN("blue"),
}


onready var _navigation_agent: = get_parent()

func _ready() -> void:
	assert(_navigation_agent is CharacterNavigationAgent2D, "Parent must be NavigationAgent2D.")


func _draw() -> void:
	if _path_points.size() >= 2:
		draw_polyline_colors(_path_points, _path_colors, 2.5)


func add_path_point(point: Vector2, type: int) -> void:
	_path_points.append(point)
	_path_colors.append(_colors[type])
	update()
	
	
func clear_path_points() -> void:
	_path_points.resize(0)
	_path_colors.resize(0)
	update()



