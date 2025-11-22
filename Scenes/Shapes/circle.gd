extends Node2D

@export var radius: float = 20.0
@export var points_nb: int = 32

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	draw_circle_polygon()
	$CollisionPolygon2D.polygon = $Polygon2D.polygon
	
func draw_circle_polygon():
	var points = PackedVector2Array()
	for i in range(points_nb + 1):
		var point = deg_to_rad(i * 360.0 / points_nb - 90)
		points.push_back(Vector2.ZERO + Vector2(cos(point), sin(point)) * radius)
	
	$Polygon2D.polygon = points
	
