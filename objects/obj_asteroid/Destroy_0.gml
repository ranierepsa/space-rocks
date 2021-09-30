if (irandom_range(0, 5) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);	
}

score += 10;
audio_play_sound(snd_die, 1, false);

// Particles
var _xx = x ;
var _yy = y ;
if(sprite_index == spr_asteroid_large) {
	global.cameraShake = 4;
	with (obj_particles) {
		part_particles_create_colour(partSys, _xx, _yy, partTypeAsteroidDebris, image_blend, 12);
	}
	repeat(2) {
		var inst_id = instance_create_layer(x, y, "Instances", obj_asteroid);
		inst_id.sprite_index = spr_asteroid_med;
	}
} else if (sprite_index == spr_asteroid_med) {
	global.cameraShake = 2;
	with (obj_particles) {
		part_particles_create_colour(partSys, _xx, _yy, partTypeAsteroidDebris, image_blend, 8);
	}
	repeat(2) {
		var inst_id = instance_create_layer(x, y, "Instances", obj_asteroid);
		inst_id.sprite_index = spr_asteroid_small;
	}
} else {
	global.cameraShake = 1;
	with (obj_particles) {
		part_particles_create_colour(partSys, _xx, _yy, partTypeAsteroidDebris, image_blend, 4);
	}
}