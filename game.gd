extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	$Camera2D.position.x += 960


func _on_player_visible_notifier_screen_exited():
	
	# following code moves camera if player goes offscreen
	var player_location_to_camera = $player.position - $Camera2D.position
	if player_location_to_camera.x > get_viewport_rect().size.x:
		$Camera2D.position.x += get_viewport_rect().size.x
	if player_location_to_camera.x < 0:
		$Camera2D.position.x -= get_viewport_rect().size.x
	if player_location_to_camera.y > get_viewport_rect().size.y:
		$Camera2D.position.y += get_viewport_rect().size.y
	if player_location_to_camera.y < 0:
		$Camera2D.position.y -= get_viewport_rect().size.y
		

