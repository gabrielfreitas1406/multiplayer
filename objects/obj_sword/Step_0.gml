// Variável para controle da animação
if (instance_exists(owner))
{
    x = owner.x;  // Ajusta a posição relativa
    y = owner.y;  // Ajusta a posição relativa
    
    // Obtém os inputs do jogador dono da espada
    var _input = rollback_get_input(owner.player_id);  // Usa o player_id do dono

    // Ajusta a orientação da espada com base no cursor
    image_angle = point_direction(x, y, _input.mb_x, _input.mb_y);
    
    // Controle de animação
    if (_input.fire_pressed && !animation_playing)
    {
        // Inicia a animação
        image_speed = 1;  // Define a velocidade normal da animação
        animation_playing = true;  // Marca que a animação está em execução
    }
    
    // Verifica se a animação terminou
    if (animation_playing)
    {
        // Se a animação acabou (último quadro da animação)
        if (image_index >= image_number - 1)
        {
            // Pausa a animação e reseta para o primeiro quadro
            image_speed = 0;
            image_index = 0;
            animation_playing = false;  // Marca que a animação terminou
        }
		
		 // Arremessa a bola quando a animação chega ao meio
        if (image_index == image_number / 2)
        {
            // Verifica se a espada está colidindo com a bola
            if (place_meeting(x, y, obj_ball))  // Verifica colisão com a bola
            {
                // Encontrando a bola existente no jogo
                var _ball = obj_ball;  // Referência à bola já criada
				
				// Atualiza a variável 'last_attacker' para o player_id ou a espada
                _ball.last_attacker = owner.player_id;  // Salva o ID do jogador dono da espada
				
                // Arremessando a bola no sentido oposto
                _ball.direction = image_angle;  // Direção oposta à da espada
                _ball.speed += 3;  // Define a velocidade da bola
            }
        }
	}
}
else
{
    instance_destroy();  // Se o dono não existir mais, destrua a espada
}
