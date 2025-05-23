/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//me desenhando
draw_self()

//alinhando o meu texto no centro na horizontal
draw_set_halign(fa_center)

//alinhando o meu texto no centro na vertical
draw_set_valign(fa_middle)


// mostrando a dificuldade do jogo

if(global.dificuldade == easy)
{
	draw_text(x, y, "EASY")
}

if(global.dificuldade == normal)
{
	draw_text(x, y, "NORMAL")
}

if(global.dificuldade == hard)
{
	draw_text(x, y, "HARD")
}

if(global.dificuldade == impossible)
{ 
	draw_text(x, y, "IMPOSSIBLE")
}


//sempre que voce usar um drawn set, voce precisa resetr ele
//para resetar um valor, voce usa o draw set com valor original
//se voice nao souber o valor original, vc pode usar  o -1 no
//draw set que por padrao ele voltar para o valor original

//resetando o alinhamento horizontal
draw_set_halign(-1)
//resetando o alinhamento vertical
draw_set_valign(-1)


