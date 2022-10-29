/// Direction show
if(currentId == 0) {
//Direction 0 right, 1 left, 2 up, 3 down
	currentId += 1;
	alarm[0] = 15;

	switch(global.dir) {
	
		case 0:
			instance_create_layer(x + 34, y, layer, obj_snake);
			break;
		case 1:
			instance_create_layer(x - 34, y, layer, obj_snake);
			break;
		case 2:
			instance_create_layer(x, y - 34, layer, obj_snake);
			break;
		case 3:
			instance_create_layer(x, y + 34, layer, obj_snake);
			break;
	}
	

} else if (currentId == (global.length - 1)) {
	instance_destroy();
} else {
	currentId += 1;
	alarm[0] = 15;
}


