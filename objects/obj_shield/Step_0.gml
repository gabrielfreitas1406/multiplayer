// Diminui o tempo de duração do escudo
shield_time -= 1;

// Se o tempo do escudo acabar, destrua o item
if (shield_time <= 0)
{
    instance_destroy();
}

// Garantir que o escudo acompanha o jogador
if (instance_exists(owner)) {
    x = owner.x;
    y = owner.y;
} else {
    // Se o jogador dono do escudo foi destruído, destrua o escudo
    instance_destroy();
}