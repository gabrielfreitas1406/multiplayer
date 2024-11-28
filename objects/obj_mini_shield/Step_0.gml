
shield_timer += 1;  // Aumenta o timer a cada frame

// Verifica se o item excedeu o tempo máximo e não foi pego
if (shield_timer >= max_shield_time) {
    instance_destroy();  // Destrói o objeto se o tempo limite for atingido
}