/// @function			snake_move()
function snake_update(){
	
	ds_grid_add_region(snakeGrid, 0, 0, width, height, -1);
	
	var d = global.directions[snakeDir];
	var dx = d[0];
	var dy = d[1];
	
	headX += dx;
	headY += dy;
	
	snakeGrid[# headX, headY] = length;
	
}