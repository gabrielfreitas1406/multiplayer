
// Define a cor azulada com transparência
draw_set_alpha(0.3); // Transparência (0.0 a 1.0)
draw_set_color(c_aqua); // Cor azulada (c_aqua é uma cor pré-definida)

// Desenha um retângulo ou uma linha representando o ar
draw_circle(x, y, 10, false); // Um pequeno círculo ao redor do ponto inicial

// Reseta as configurações de desenho
draw_set_alpha(1); // Restaura a opacidade padrão
draw_set_color(c_white); // Restaura a cor padrão
