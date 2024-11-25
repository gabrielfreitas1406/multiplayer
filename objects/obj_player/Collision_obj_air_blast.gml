// Se o jogador não for quem lançou o ar
if (other.player != self) {
    // Calcula a direção para empurrar o jogador
    var push_dir = point_direction(x, y, other.player.x, other.player.y);

    // Define a força do empurrão
    var push_force = 5; // Ajuste a força conforme necessário

	
    // Empurra o jogador na direção calculada
    other.player.x += lengthdir_x(push_force, push_dir);
    other.player.y += lengthdir_y(push_force, push_dir);

    // Destroi o obj_air_blast após a colisão
    instance_destroy();
}
