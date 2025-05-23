//desenhando a quantidade de vidas
var _x = 20
var _y = 40
var _qtd = 30
//desenhando um coraçao por vida
repeat(global.vida)
{

	desenha_coracao(_x, _y)
	
	// o _X aumenta qdt
	_x += _qtd
	

}