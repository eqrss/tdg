extends CharacterBody2D

var MAX_SPEED = 75


func _ready():
	pass


func _process(delta):
	
	velocity = enemy_to_target_player() * MAX_SPEED
	move_and_slide()


func enemy_to_target_player():
	var player_node = get_tree().get_first_node_in_group("player") as Node2D
	if player_node != null:
		return (player_node.global_position - global_position).normalized()
	return Vector2.ZERO	