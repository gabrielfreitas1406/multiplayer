// Variáveis auxiliares para o movimento
var _new_x = x + lengthdir_x(speed, direction);
var _new_y = y + lengthdir_y(speed, direction);

// Verifica se a bola saiu dos limites da janela
if (_new_x < 0 || _new_x > room_width)  // Se a bola sair pela borda esquerda ou direita
{
    direction = 180 - direction;  // Inverte a direção no eixo X (direção oposta)
    _new_x = clamp(_new_x, 0, room_width);  // Garante que a bola não ultrapasse a borda da janela
}

if (_new_y < 0 || _new_y > room_height)  // Se a bola sair pela borda superior ou inferior
{
    direction = 360 - direction;  // Inverte a direção no eixo Y (direção oposta)
    _new_y = clamp(_new_y, 0, room_height);  // Garante que a bola não ultrapasse a borda da janela
}

// Atualiza a posição da bola
// x = _new_x;
// y = _new_y;
