extends CanvasLayer

@onready var animation_player = $AnimationPlayer
@onready var color_rect = $ColorRect

func _ready():
	# Make sure the screen starts transparent
	color_rect.modulate.a = 0

func change_scene(target_path: String):
	# 1. Fade to black
	animation_player.play("fade")
	await animation_player.animation_finished
	
	# 2. Change the scene
	get_tree().change_scene_to_file(target_path)
	
	# 3. Fade back out
	animation_player.play_backwards("fade")
