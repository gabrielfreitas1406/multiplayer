// Posição inicial do jogador
y = room_height / 2;

// Definir variáveis de velocidade
acceleration = 0.4;  // Aceleração por frame
max_speed = 3;       // Velocidade máxima
deceleration = 0.2;  // Desaceleração quando a tecla não é pressionada
hsp = 0;
vsp = 0;

if (player_id == 0)
{
    x = 50;
}
else if (player_id == 1)
{
    x = room_width - 50;
}

// Inicializa os pontos do jogador
points = 0;

// Cria a espada junto com o jogador
sword = instance_create_layer(x, y, "Instances", obj_sword);

// Faz a espada "seguir" o jogador (opcional)
sword.owner = id;
