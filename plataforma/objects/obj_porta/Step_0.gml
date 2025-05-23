
// se ta rolando uma transicao, eu nao faço nd
if(global.transicao != false) exit;

switch (estado)
{
	case "idle":
		sprite_index = spr_porta
		image_speed = 1
		
		//Se eu to colodindo com player e ele apertou a seta para cima, ele entra
		
		var _player = instance_place(x, y, obj_player)
		
		if(_player)
		{
			if (keyboard_check_pressed(ord("W")) && saida)
			{
				estado = "abrindo"
				
				//fazendo o player ir para o estado de entrando "in"
				
				_player.estado = "in"
				
				// crio a minha transicao
				layer_sequence_create("transicao", obj_player.x, obj_player.y, sq_transicao_in)
			}
		}
		
		
	break
	
	case "abrindo":
		mudando_sprite(spr_porta_abre)
		
		// terminou de abrir, ela fica parada
		if(image_index >= image_number -1)
		{
			image_speed = 0
		}
	
	break
	
	case "fechando":
		mudando_sprite(spr_porta_fecha)
		
		//saindo do estado de fechando
		if(image_index >= image_number - 1)
		{
			estado = "idle"
		}
	break
}