estado = "idle" //idle, on, espera

criei_bala = false
tempo_tiro = room_speed * 5
timer_tiro = tempo_tiro

muda_sprite = function(_sprite)
{
	//checar se eu estou com a sprite certa
	if (sprite_index != _sprite)
	{
		sprite_index = _sprite
		image_index = 0
	}
}