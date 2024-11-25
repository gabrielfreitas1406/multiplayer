//movimentos do jogador
var ring = instance_find(obj_ringue, 0); // Pega o ringue

if (ring != noone) {
    // Movimentação básica
    var _input = rollback_get_input();
    if (_input.left) x -= 1;
    if (_input.right) x += 1;
    if (_input.up) y -= 1;
    if (_input.down) y += 1;

    // Verificar se saiu do ringue (distância do centro)
    var dist_to_center = point_distance(x, y, ring.x, ring.y);
    if (dist_to_center > ring.ring_radius) {
        show_message("Jogador " + string(player_id) + " caiu! Oponente venceu!");
        game_restart(); // Reinicia a partida
    }
}

image_angle = point_direction(x, y, _input.mb_x, _input.mb_y)

//Criando o tiro
/*if (_input.fire_pressed)
{
	var _proj = instance_create_layer (x, y, layer, obj_projectile);
	_proj.speed = 10;
	_proj.direction = image_angle;
	_proj.image_angle = image_angle;
	_proj.player = self;
}*/

if (_input.fire_pressed){
	var _air_blast = instance_create_layer(x, y, layer, obj_air_blast);
    _air_blast.speed = 10; // Velocidade do projétil
    _air_blast.direction = image_angle; // A direção do ar será a mesma do jogador
    _air_blast.player = self; // Definindo o jogador que disparou

    _air_blast.distance = 1000; // A distância máxima que o projétil pode percorrer, ajuste conforme necessário
}