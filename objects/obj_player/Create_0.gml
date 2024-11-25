//cria o jogador
var ring = instance_find(obj_ringue	, 0);

if (ring != noone) {
    // Centro do ringue
    var ring_center_x = ring.x;
    var ring_center_y = ring.y;
    
    // Raio do ringue (assumindo que o sprite é um círculo)
    var ring_radius = ring.sprite_width / 2;

    // Posição inicial do jogador dentro do ringue
    y = ring_center_y; // Centralizado verticalmente

    if (player_id == 0) {
        x = (ring_center_x - (ring_radius / 2)); // Esquerda do centro
    } else if (player_id == 1) {
        x = (ring_center_x + (ring_radius / 2)); // Direita do centro
    }
} 


points = 0;
