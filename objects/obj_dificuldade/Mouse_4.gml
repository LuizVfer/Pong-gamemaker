/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// mudando a dificuldade do jogo

if(global.dificuldade == easy )
{
	global.dificuldade = normal //trocar para a dificuldade normal
}
else if(global.dificuldade == normal)
{
	global.dificuldade =  hard //trocar para a dificuldade hard
}
else if(global.dificuldade == hard)
{
	global.dificuldade = impossible //trocar para a dificuldade impossivel
}
else if(global.dificuldade == impossible)
{ 
	global.dificuldade = easy //trocar para a dificuldade easy
}




