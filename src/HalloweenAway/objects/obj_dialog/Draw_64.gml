/// @description Draw Dialog
if (image_alpha>.2) draw_sprite_ext(spr_dialogue,0,0,y,1,1,0,c_white,image_alpha-.2);	//Draw the transparent box as long as the alpha won't be negative
if sprite_exists(image) draw_sprite_ext(image,0,2,y+2,1,1,0,c_white,image_alpha);		//Draw the character portrait
draw_set_font(fnt_game);
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_text(12,y,text);			//Draw the text of the dialog

draw_set_alpha(1);				//Reset the alpha or else lots of other things will suddenly become transparent.