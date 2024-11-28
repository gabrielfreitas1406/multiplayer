// Verifica se o jogo já está ativo
if (!game_active) {
    // Ativa o jogo apenas quando os jogadores estiverem conectados
    if (rollback_game_running) {
        game_active = true;  // O jogo começa
    }
} else {
	/*
    // Apenas gere escudos após o jogo estar ativo
    shield_timer++;

    // Chance de spawn do escudo a cada 300 frames (5 segundos)
    if (shield_timer >= 300) {
        shield_timer = 0;

        // Cria o escudo em uma posição aleatória
        instance_create_layer(
            irandom_range(40, room_width - 40), 
            irandom_range(40, room_height - 40), 
            "Instances", 
            obj_shield
        );
    }
	*/
	//cria o item do escudo a cada 5 segundos
	if (irandom_range(0, 300) == 0) {
		instance_create_layer(irandom_range(40, room_width - 40), irandom_range(40, room_height - 40), "Instances", obj_mini_shield);
	}
}