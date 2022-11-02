/// @function			change_dir(direction)
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_dir(newDir){
	if ((prevSnakeDir & 1) != (newDir & 1)) {
		snakeDir = newDir
	}
}