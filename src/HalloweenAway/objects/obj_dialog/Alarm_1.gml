/// @description Update Position
/*This is a really simple check using GM's basic collision masks. The dialog boxes are physically stored in the
top left of the room at all times so we can just run a line through the area above this box, and if it's empty,
then we can move up (given that it won't go offscreen).*/

if !collision_line(1,bbox_top-12,1,bbox_top-2,obj_dialog,false,true) && y > 16 {
	y-=16;
}
alarm[1] = 3;