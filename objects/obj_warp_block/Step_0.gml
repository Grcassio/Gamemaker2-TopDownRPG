/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, obj_player)
{
	warp = instance_create_depth(x, y, depth - 1000, obj_warp_controller);
	warp.newX = target_x;
	warp.newY = target_y;
	warp.newRoom = target_rm;

	
}