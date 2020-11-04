/// @description Pop Items
if !ds_queue_empty(dialog) {
	var str = "";
	var img = noone;
	for (var i = 0; i < 2; i++) {
		var pop = ds_queue_dequeue(dialog);
		switch(typeof(pop)) {				//Test the type of the item popped and store it appropriately.
			case "string":
				str = pop;
				break;
			case "int32":
			case "int64":
			case "number":
				if sprite_exists(pop) img = pop;
				break;
		}
	
		if str!="" && sprite_exists(img) {	//Once we've got a valid piece of text and a valid sprite, then we create the dialog
			var _spot = instance_number(obj_dialog);
			with instance_create_layer(0,2+(18*_spot),"GUI",obj_dialog) {
				text = str;
				image = img;
				time+=ceil(string_length(text)*1.2);	//Scale display time to text length, kinda.
			}
		}
	}
}

alarm[0] = 2;	//Wait two frames before checking for another dialog