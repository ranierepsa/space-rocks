partSys = part_system_create();

//Exhaust
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust, spr_exhaust, false, false, false);
part_type_size(partTypeExhaust, .4, .4, 0.05, 0);
part_type_color3(partTypeExhaust, c_white, c_fuchsia, c_purple);
part_type_alpha3(partTypeExhaust, 1, 1, 0);
part_type_life(partTypeExhaust, 20, 20);

partTypeExhaustEnemy = part_type_create();
part_type_sprite(partTypeExhaustEnemy, spr_exhaust, false, false, false);
part_type_size(partTypeExhaustEnemy, .4, .4, 0.05, 0);
part_type_color3(partTypeExhaustEnemy, c_yellow, c_orange, c_red);
part_type_alpha3(partTypeExhaustEnemy, 1, 1, 0);
part_type_life(partTypeExhaustEnemy, 20, 20);

//Debris
partTypeAsteroidDebris = part_type_create();
part_type_sprite(partTypeAsteroidDebris, spr_asteroid_debris_strip4, false, false, true);
part_type_life(partTypeAsteroidDebris, 60, 80);
part_type_alpha3(partTypeAsteroidDebris, .8, .8, 0);
part_type_direction(partTypeAsteroidDebris, 0, 359, 0, false);
part_type_orientation(partTypeAsteroidDebris, 0, 359, 1, false, false);
part_type_speed(partTypeAsteroidDebris, 2, 2.4, -0.02, 0);

partTypeShipDebris = part_type_create();
part_type_sprite(partTypeShipDebris, spr_ship_debris_strip5, false, false, true);
part_type_size(partTypeShipDebris, .5, 1, 0, 0);
part_type_life(partTypeShipDebris, 60, 80);
part_type_alpha3(partTypeShipDebris, .6, .6, 0);
part_type_direction(partTypeShipDebris, 0, 359, 0, false);
part_type_orientation(partTypeShipDebris, 0, 359, 1, false, false);
part_type_speed(partTypeShipDebris, 3, 4, -0.05, 0);
