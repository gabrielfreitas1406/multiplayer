// Move o projétil para frente
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Detecta colisões com o oponente (obj_player)
if (place_meeting(x, y, obj_player)) {
    var player_hit = instance_place(x, y, obj_player);
    if (player_hit != noone) {
        // Empurrar o oponente
        var push_distance = 30; // Distância do empurrão
        var push_direction = point_direction(x, y, player_hit.x, player_hit.y);

        player_hit.x += lengthdir_x(push_distance, push_direction);
        player_hit.y += lengthdir_y(push_distance, push_direction);

        // Destruir o projétil após o impacto
        instance_destroy();
    }
}

// Verifica se o projétil saiu da tela ou alcançou a distância máxima
if (point_distance(x, y, player.x, player.y) > distance) {
    instance_destroy(); // Destruir se for além do alcance
}
