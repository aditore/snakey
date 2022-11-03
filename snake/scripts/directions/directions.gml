/// @function			directions();
function directions(){
	gml_pragma("global", "directions();");
	
	enum DIRECTIONS {
		left, up, right, down, height
	}

	global.directions = [
		[-1, 0],
		[0, -1],
		[1, 0],
		[0, 1]
	];
	
	global.tile_flags = [
		tile_mirror,
		tile_rotate | tile_mirror,
		0,
		tile_rotate
	];
	
	//bend looks like 7
	
	global.c_tile_flags = [
		0, //left left
		tile_flip | tile_mirror, //left up
		0, //left right
		tile_mirror, //left down
		0, //up left
		0, //up up
		tile_mirror, //up right
		0, //up down
		0, //right left
		tile_flip, //right up
		0, //right right
		0, //right down
		tile_flip, //down left
		0, //down up
		tile_flip | tile_mirror, //down right
		0 //down down
	]
	
}