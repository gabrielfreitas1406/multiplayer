if (other.player == self) return;

effect_create_above(ef_ring, x, y, 0, c_white);



var ring = instance_find(obj_ringue	, 0);
var ring_radius = ring.sprite_width / 2
x = irandom_range(40, (ring_radius) - 40);
y = irandom_range(40, (ring_radius) - 40);

other.player.points += 1;

instance_destroy(other);
