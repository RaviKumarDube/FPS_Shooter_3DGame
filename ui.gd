extends Control

var health := 100
var score := 0
var time_passed := 0.0

@onready var health_label = $HealthLabel
@onready var score_label = $ScoreLabel
@onready var timer_label = $TimerLabel

func _process(delta):
	time_passed += delta
	timer_label.text = "Timer: " + str(int(time_passed))

func update_health(value):
	health = value
	health_label.text = "Health: " + str(health)

func add_score(amount):
	score += amount
	score_label.text = "Score: " + str(score)
