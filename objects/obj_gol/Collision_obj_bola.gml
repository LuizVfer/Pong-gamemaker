/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//avisar se foi gol do p1 ou do p2
//se eu sou o gol do p1, entao quem fez gol foi p2
//se eu sou o gol do p2, entao quem fez gol foi p1

if(gol_p1)
{
	//gol do player 2

	global.gols_p2++
	global.velv_bola = 0
	obj_raquete.x = obj_raquete.x_inicial;
	obj_raquete.y = obj_raquete.y_inicial;
	obj_raquete2.x = obj_raquete2.x_inicial;
	obj_raquete2.y = obj_raquete2.y_inicial;		
}
else// eu nao sou o gol do p1, logo eu só posso ser o gol do p2
{
	//gol do player 1
	global.gols_p1++
	global.velv_bola = 0
	obj_raquete.x = obj_raquete.x_inicial;
	obj_raquete.y = obj_raquete.y_inicial;
	obj_raquete2.x = obj_raquete2.x_inicial;
	obj_raquete2.y = obj_raquete2.y_inicial;		
}


