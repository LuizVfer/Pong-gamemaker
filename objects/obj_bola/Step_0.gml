/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//passando a minha velocidade para a variavel global
global.velv_bola = vspeed

show_debug_message(vspeed)


if(vspeed >= 15)
{
	vspeed = 15
}
if(vspeed < -15)
{
	vspeed = -15
}