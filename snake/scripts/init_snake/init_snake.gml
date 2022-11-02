/// @function			init_snake(grid, dirGrid, px, py, length, direction);

function init_snake(grid, dirGrid, px, py, l, dir) {
	var od = dir_opposite(dir);
	var w = ds_grid_width(grid);
	var h = ds_grid_height(grid);

	ds_grid_set_region(grid, 0, 0, w, h, 0);

	for(var i = l; i > 0; i--){
		grid[# px, py] = i;
		dirGrid[# px, py] = dir;
		
		var d = global.directions[od];
		px += d[0];
		py += d[1];
	
		if (px < 0) {
			show_error("SNAKE OUT OF BOUNDS", true)
		}
	}
}

function dir_opposite(dir) {
	return dir ^ 2;
}
