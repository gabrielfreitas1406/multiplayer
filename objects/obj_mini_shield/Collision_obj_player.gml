// Ativar o escudo no jogador que colidiu
other.shield_active = true;
other.shield_time = room_speed * 5; // Escudo dura 5 segundos

// Opcional: criar o objeto visual do escudo ao redor do jogador
var shield_instance = instance_create_layer(other.x, other.y, "Instances", obj_shield);

// Fazer com que o escudo siga o jogador
shield_instance.owner = other; // Atribuir o jogador como dono do escudo

// Destruir o item coletável
instance_destroy();
