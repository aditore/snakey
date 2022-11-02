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
	
}