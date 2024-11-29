// No evento de colisão entre o jogador (self) e a bola (other)

// Verifica se o escudo está ativo
if (shield_active) {
    // O escudo bloqueia a bola
    shield_active = false; // Desativa o escudo após o uso
	
	// Atualiza a bola para considerar este jogador como o último atacante
    other.last_attacker = self.player_id;
	
	//atualiza a cor da bola
	var _ball = obj_ball;
	if (player_id == 1){
		_ball.image_blend = c_red;
	}
	else{
		_ball.image_blend = c_blue;
	}

    // Opcional: adicione um efeito visual indicando o impacto
    effect_create_above(ef_explosion, self.x, self.y, 0, c_blue);

    // Opcional: reflete a bola
    other.direction += 180; // Inverte a direção da bola
    other.speed = max(other.speed, 5); // Ajusta a velocidade mínima da bola

} else {
    // Se o escudo não está ativo, segue a lógica normal de colisão
    if (other.last_attacker != self.player_id and other.last_attacker != -1) 
    {
        // Cria um efeito de anel acima do jogador atingido
        effect_create_above(ef_ring, self.x, self.y, 0, c_white);


        // Restaura o jogador a uma posição aleatória
        self.x = irandom_range(40, room_width - 40);
        self.y = irandom_range(40, room_height - 40);

        // Identifica o outro jogador
        var _other_player = (self.player_id == 0) ? instance_find(obj_player, 1) : instance_find(obj_player, 0);

        // Adiciona um ponto ao outro jogador
        if (_other_player != undefined) {
            _other_player.points += 1;
        }

        // Resetar a bola
        other.speed = 0;  // Reseta a velocidade da bola
        other.direction = 0;  // Reseta a direção da bola
        other.x = self.x + irandom_range(-50, 50); // Posiciona a bola próxima ao jogador derrotado
        other.y = self.y + irandom_range(-50, 50); // Posiciona a bola próxima ao jogador derrotado

		//atualiza a cor da bola
		var _ball = obj_ball;
		_ball.image_blend = -1;

        // Resetar o atacante da bola
        other.last_attacker = -1;  // Resetando quem atacou a bola (nenhum atacante)
    }
}
