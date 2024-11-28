var _input = rollback_get_input ();

// Lógica de aceleração para os movimentos horizontais
if (_input.left) {
    hsp = max(hsp - acceleration, -max_speed);  // Acelera para a esquerda
}
else if (_input.right) {
    hsp = min(hsp + acceleration, max_speed);   // Acelera para a direita
}
else {
    // Desaceleração horizontal
    if (hsp > 0) {
        hsp = max(hsp - deceleration, 0);
    } else {
        hsp = min(hsp + deceleration, 0);
    }
}

// Lógica de aceleração para os movimentos verticais
if (_input.up) {
    vsp = max(vsp - acceleration, -max_speed);   // Acelera para cima
}
else if (_input.down) {
    vsp = min(vsp + acceleration, max_speed);    // Acelera para baixo
}
else {
    // Desaceleração vertical
    if (vsp > 0) {
        vsp = max(vsp - deceleration, 0);
    } else {
        vsp = min(vsp + deceleration, 0);
    }
}


// Atualizar as posições com base na velocidade
x += hsp;
y += vsp;

// Limitar o objeto no eixo X
x = clamp(x, 0, room_width);

// Limitar o objeto no eixo Y
y = clamp(y, 0, room_height);

image_angle = point_direction(x, y, _input.mb_x, _input.mb_y)


// Verifica se o escudo está ativo
if (shield_active)
{
    // Diminui o tempo de duração do escudo
    shield_time -= 1;

    // Se o tempo do escudo acabar, desativa o escudo
    if (shield_time <= 0)
    {
        shield_active = false;
		
		//destrutir visualmente o escudo
		with (obj_shield) {
            if (owner == self) {
                instance_destroy();
            }
        }
    }
}

/* if (_input.fire_pressed)
{
	var _proj = instance_create_layer (x, y, layer, obj_projectile);
	_proj.speed = 10;
	_proj.direction = image_angle;
	_proj.image_angle = image_angle;
	_proj.player = self;
}
*\


