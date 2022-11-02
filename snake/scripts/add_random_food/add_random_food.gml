/// @function			add_random_food();
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_random_food(){
	
	do {
		var px = irandom(width);
		var py = irandom(length);
	} until ((snakeGrid[# px, py] <= 0) && (foodGrid[# px, py] == 0));
	
	foodGrid[# px, py] = 1;

}