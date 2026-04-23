extends Control


func _on_start_pressed() -> void:
	# If you made the SceneChanger autoload:
	SceneChanger.change_scene("res://Scenes/Levels/Level1.tscn")
	
	# OR, if you want the "quick and dirty" way for now:
	# get_tree().change_scene_to_file("res://Scenes/Levels/Level1.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
