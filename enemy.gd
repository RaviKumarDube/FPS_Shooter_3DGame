extends CharacterBody3D

@export var speed: float = 4.0
@export var health: int = 100

@export var follow_distance: float = 25.0
@export var stop_distance: float = 2.0

@export var attack_damage: int = 5
@export var attack_cooldown: float = 1.0

var can_attack := true

@onready var player = get_parent().get_node("Player")

# ✅ FIXED LINE (ONLY CHANGE)
@onready var main = get_tree().get_first_node_in_group("main")


func _physics_process(delta):
	if player == null:
		return

	var distance = global_position.distance_to(player.global_position)

	if distance < follow_distance:
		var direction = player.global_position - global_position
		direction.y = 0

		if distance > stop_distance:
			direction = direction.normalized()
			velocity.x = direction.x * speed
			velocity.z = direction.z * speed
		else:
			velocity.x = 0
			velocity.z = 0
			attack_player()

		move_and_slide()

		var look_target = player.global_position
		look_target.y = global_position.y
		look_at(look_target, Vector3.UP)


func attack_player():
	if not can_attack:
		return

	can_attack = false

	if main and main.has_method("damage_player"):
		main.damage_player(attack_damage)

	await get_tree().create_timer(attack_cooldown).timeout
	can_attack = true


func take_damage(amount):
	health -= amount
	print("Enemy hit! Health:", health)

	if health <= 0:
		die()


func die():
	print("ENEMY DEAD")

	if main and main.has_method("enemy_died"):
		main.enemy_died()

	queue_free()
