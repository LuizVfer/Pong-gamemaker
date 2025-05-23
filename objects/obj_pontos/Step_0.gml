/// @description checando se o jogo acabou
// Você pode escrever seu código neste editor


if (global.gols_p1 >= global.gols_max) // se o p1 fez dois gol o mais
{
	//eu falo que o jogo acabou
	//show_message("Player 1 venceu")
	//zero os gols
	global.gols_p1 = 0
	global.gols_p2 = 0
	game_restart()
	
	//zerando a velocidade global da bola
	global.velv_bola = 0
}

if (global.gols_p2 >= global.gols_max) // se o p2 fez dois gol o mais
{
	//eu falo que o jogo acabou
	//show_message("Player 2 venceu")
	//zero os gols
	global.gols_p2 = 0
	global.gols_p1 = 0
	
	game_restart()
	
	//zerando a velocidade global da bola
	global.velv_bola = 0
}
