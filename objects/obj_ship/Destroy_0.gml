lives -= 1;

with(obj_game) {
	alarm[1] = room_speed;	
}

audio_play_sound(snd_die, 1, false);

instance_destroy();

// Particles
var _xx = x;
var _yy = y;
var color = image_blend;
with (obj_particles) {
	part_particles_create_colour(partSys, _xx, _yy, partTypeShipDebris, color, 10);
}