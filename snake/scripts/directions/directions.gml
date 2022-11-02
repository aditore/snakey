/// @function			directions();
function directions(){
	gml_pragma("global", "directions();");
	
	enum DIRECTIONS {
		left, right, up, down
	}

	global.directions = [
		[-1, 0],
		[1, 0],
		[0, -1],
		[0, 1]
	];
}