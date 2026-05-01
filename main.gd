extends Node3D

# ✅ MATCH YOUR SCENE NAMES (IMPORTANT)
@onready var health_label = $CanvasLay/Contr/Health
@onready var score_label = $CanvasLay/Contr/ScoreL
@onready var timer_label = $CanvasLay/Contr/TimerL
@onready var indicator = $CanvasLay/Contr/indicator

var enemy_scene = preload("res://Enemy.tscn")

var health := 100
var score := 0
var time_passed := 0.0

func _ready():
	update_ui()
	spawn_enemy()

func _process(delta):
	# ⏱ TIMER
	time_passed += delta
	
	if timer_label:
		timer_label.text = "Time: " + str(int(time_passed))

# 🔄 UPDATE UI
func update_ui():
	if health_label:
		health_label.text = "Health: " + str(health)
	
	if score_label:
		score_label.text = "Score: " + str(score)

# 🧮 SCORE
func add_score(amount):
	score += amount
	update_ui()

# ❤️ PLAYER DAMAGE
func damage_player(amount):
	health -= amount
	
	if health < 0:
		health = 0
	
	update_ui()
	
	if health == 0:
		print("GAME OVER")

# 👾 SPAWN ENEMY
func spawn_enemy():
	var enemy = enemy_scene.instantiate()
	add_child(enemy)
	
	enemy.global_position = Vector3(
		randf_range(-20, 20),
		0,
		randf_range(-20, 20)
	)

# 🔁 RESPAWN
func enemy_died():
	add_score(10)
	await get_tree().create_timer(2.0).timeout
	spawn_enemy()
