/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//me desenhando
draw_self()

//alinhando o meu texto no centro na horizontal
draw_set_halign(fa_center)

//alinhando o meu texto no centro na vertical
draw_set_valign(fa_middle)

//desenhando meu texto
draw_text(x, y, "JOGAR")

//sempre que voce usar um drawn set, voce precisa resetr ele
//para resetar um valor, voce usa o draw set com valor original
//se voice nao souber o valor original, vc pode usar  o -1 no
//draw set que por padrao ele voltar para o valor original

//resetando o alinhamento horizontal
draw_set_halign(-1)
//resetando o alinhamento vertical
draw_set_valign(-1)
