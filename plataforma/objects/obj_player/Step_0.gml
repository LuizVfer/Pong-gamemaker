//controlando o player
var _chao = place_meeting(x, y + 1, obj_chao)

if (global.transicao != false) exit

switch(estado)
{
	case "normal":
		estado_normal()
	break
	
	case "in":
		mudando_sprite(spr_player_in)
		velh = 0
		
		//terminou a animaçao ele para a animaçao porta 
		
		var _img_vel = sprite_get_speed(sprite_index) / room_speed;
		
		//indo para o estado normal
		if ( image_index >= image_number - _img_vel)
		{
			image_speed = 0
			image_index = image_number -1
			image_alpha = 0
		}
		
	break
	
	case "out":
		mudando_sprite(spr_player_out)
		
		var _img_vel = sprite_get_speed(sprite_index) / room_speed;
		
		//indo para o estado normal
		if ( image_index >= image_number - _img_vel)
		{
			estado = "normal"
		}
	break
	
	case "dead":
		mudando_sprite(spr_player_dead)
		
		timer_reinicia--
		
		if (timer_reinicia <=0)
		{
			global.vida = global.max_vida
			game_restart()
		}
		
		//ficando visivel
		if(image_alpha < 1)
		{	
			image_alpha += 0.01
		}
		
		if (image_index > image_number -1)
		{
			image_speed = 0
			image_index = image_number - 1
		}
	
	break
}