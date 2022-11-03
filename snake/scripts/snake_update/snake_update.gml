/// @function			snake_move()
function snake_update(){
	
	
	ds_grid_add_region(snakeGrid, 0, 0, width, height, -1);
	
	var d = global.directions[snakeDir];
	var dx = d[0];
	var dy = d[1];
	
	snakeDirGrid[# headX, headY] = snakeDir | (prevSnakeDir << 2);
	
	headX += dx;
	headY += dy;
	
	//eat snake
	var ateSnake = snakeGrid[# headX, headY] > 0;
	var ateWall = headX < 0 || headX >= width || headY < 0 || headY >= height; 
	if (ateSnake || ateWall) {
		game_restart();
	}
	
	snakeGrid[# headX, headY] = length;
	snakeDirGrid[# headX, headY] = snakeDir | (prevSnakeDir << 2);
	
	//eat food
	if (foodGrid[# headX, headY]) {
		foodGrid[# headX, headY] = 0;
		add_random_food();
		length++;
	}
	
	prevSnakeDir = snakeDir;
	
}