extends Node

@export var game_time := 60

func _ready():
	start_game()

func start_game():
	print("GAME STARTED")
	await get_tree().create_timer(game_time).timeout
	end_game()

func end_game():
	print("TIME UP")
	get_tree().paused = true
