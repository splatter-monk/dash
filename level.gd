extends Node2D

func _physics_process(delta: float) -> void:
	$KillZone.position.y = $Player.position.y
	$KillZone.position.x += $Player.SPEED*delta
	


func _on_kill_zone_body_entered(body: Node2D) -> void:
	var things = $KillZone.get_overlapping_bodies()
	for t in things:
		if t.has_method("explode"):
			t.explode()
