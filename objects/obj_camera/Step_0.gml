/// @description Insert description here
// You can write your code in this editor

if (instance_exists(target)) {
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height-global.cameraHeight);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

layer_x("Parallax_0", global.cameraX * 0.98);
layer_y("Parallax_0", global.cameraY * 0.98);

layer_x("Parallax_1", global.cameraX * 0.92);
layer_y("Parallax_1", global.cameraY * 0.92);

layer_x("Parallax_2", global.cameraX * 0.90);
layer_y("Parallax_2", global.cameraY * 0.90);

layer_x("Parallax_3", global.cameraX * 0.88);
layer_y("Parallax_3", global.cameraY * 0.88);