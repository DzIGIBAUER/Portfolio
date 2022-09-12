extends NavigationAgent2D

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






