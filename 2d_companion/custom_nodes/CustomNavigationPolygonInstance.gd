extends NavigationPolygonInstance


enum {
	OUTLINE_BASE = 0,
}

var navpoly_preview: Polygon2D

func _ready() -> void:
	navpoly_preview = Polygon2D.new()
	navpoly_preview.color = ColorN("aqua", 0.5)
	add_child(navpoly_preview)


## Generates [NavigationPolygon] from outline.
func generate_navigation_polygon(outline: PoolVector2Array) -> void:
	if navpoly.get_outline_count() < 1:
		navpoly.add_outline(outline)
	else:
		navpoly.set_outline(OUTLINE_BASE, outline)
	navpoly.make_polygons_from_outlines()
	_update_navpoly_preview()


## Adds [StaticBody2D], [CollisionPolygon2D] and updates navigation polygon.
## Margin pushed grows rect that is being used to make a hole in navigation polygon,
## so character doestn't get stuck on edges.
## Wraps them in [Polygon2D] with texture if debug is enabled.
## Takes [Array] of [Rect2].
func add_platforms(rectangles_array: Array, margin: float) -> void:
	for rect in rectangles_array:
		rect = rect as Rect2
		var static_body = StaticBody2D.new()
		var collision_shape = CollisionShape.new()
		var rect_shape = RectangleShape2D.new()
		
		rect_shape.extents = rect.size
		collision_shape.shape = rect_shape
		
		static_body.add_child(collision_shape)
		
		var polygon_2d = Polygon2D.new()
		polygon_2d.polygon = _rect_to_polygon(rect)
		polygon_2d.color = ColorN("red", 0.5)
		polygon_2d.add_child(static_body)
		polygon_2d.add_to_group("platforms")
		
		add_child(polygon_2d)
		
		navpoly.add_outline(_rect_to_polygon(rect.grow(margin)))
		
		
	navpoly.make_polygons_from_outlines()
	_update_navpoly_preview()


func _update_navpoly_preview() -> void:
	for c in navpoly_preview.get_children(): c.queue_free()
	
	if not Global.debug: return
	
	for i in navpoly.get_outline_count():
		if i == OUTLINE_BASE:
			navpoly_preview.polygon = navpoly.get_outline(i)
		else:
			var obstacle_poly = Polygon2D.new()
			obstacle_poly.color = ColorN("black")
			obstacle_poly.polygon = navpoly.get_outline(i)
			obstacle_poly.name = str(i)
			navpoly_preview.add_child(obstacle_poly)


static func _rect_to_polygon(rect: Rect2) -> PoolVector2Array:
	return PoolVector2Array([
		rect.position,
		rect.position + Vector2(rect.size.x, 0),
		rect.end,
		rect.position + Vector2(0, rect.size.y),
	])


