/// @description controlar a inteligencia artificical da raquete
// Você pode escrever seu código neste editor

if (global.dois_jogadores) 
{
	exit
}

//pegando a veloicadae da bola e aplicando ela na miha velocidade
vspeed = global.velv_bola

//referencia direta para a instancia da bola
//vspeed = inst_503AD942.vspeed
//referencia dirteta para qualquer(e todas) instancia da bola
//vspeed = obj_bola.vspeed

//limitando a raquete na hora de ir para baixo
//checando se a vspeed da raquete é maior do a velocidade limite

if(vspeed >= velocidade_ia)
{
	vspeed = velocidade_ia// llimitando a velocidade para baixo
}

//limitando na hora de subir
//subir usa valores negativos
if(vspeed < -velocidade_ia)
{
	vspeed = -velocidade_ia // llimitando a velocidade para cima
}
