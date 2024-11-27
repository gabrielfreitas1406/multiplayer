// No evento de colisão entre o jogador (self) e a bola (other)
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
    if (_other_player != undefined)
    {
        _other_player.points += 1;
    }

    // Resetar a bola
    other.speed = 0;  // Reseta a velocidade da bola
    other.direction = 0;  // Reseta a direção da bola
    other.x = self.x + irandom_range(-50, 50); // Posiciona a bola próxima ao jogador derrotado
    other.y = self.y + irandom_range(-50, 50); // Posiciona a bola próxima ao jogador derrotado

    // Resetar o atacante da bola
    other.last_attacker = -1;  // Resetando quem atacou a bola (nenhum atacante)
}
