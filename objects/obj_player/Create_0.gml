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
	sprite_index = spr_player1
    x = 50;
}
else if (player_id == 1)
{
	sprite_index = spr_player2
    x = room_width - 50;
	
}

// Inicializa os pontos do jogador
points = 0;

// Cria a espada junto com o jogador
sword = instance_create_layer(x, y, "Instances", obj_sword);

// Faz a espada "seguir" o jogador (opcional)
sword.owner = id;


// Variáveis para controlar o escudo
shield_active = false;  // Define se o escudo está ativo
shield_time = 0;        // Tempo de duração do escudo