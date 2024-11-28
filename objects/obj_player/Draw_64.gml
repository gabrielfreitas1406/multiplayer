//Display de informações sobre o esccudo
// Texto para exibir o status do escudo
var shield_status = shield_active ? "Protegido" : "Sem escudo";

// Posição do display para cada jogador
var display_x = (player_id == 0) ? 20 : room_width - 150;
var display_y = 20;

// Caixa de fundo
draw_set_color(c_black);
draw_rectangle(display_x - 10, display_y - 10, display_x + 140, display_y + 50, false);

// Texto do jogador
draw_set_color(c_white);
draw_text(display_x, display_y, "Jogador " + string(player_id + 1));

// Status do escudo
draw_text(display_x, display_y + 20, "Escudo: " + shield_status);

// Duração do escudo (se ativo)
if (shield_active) {
    draw_text(display_x, display_y + 40, "Duração: " + string(ceil(shield_time / room_speed)) + "s");
}