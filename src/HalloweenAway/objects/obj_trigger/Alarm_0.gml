/// @description Test for touch
var collide = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_player,false,true);
if active && on_touch && collide {
	trigger_script();
} else if active && on_leave && !collide && collided {
	trigger_script();
}

if (collide) collided = true;
alarm[0] = 2;