/// @function			init_snake(grid, px, py, l);
/// @param grid
/// @param x
/// @param y
/// @param length

function init_snake(grid, px, py, l) {
	var w = ds_grid_width(grid);
	var h = ds_grid_height(grid);

	ds_grid_set_region(grid, 0, 0, w, h, 0);

	for(var i = l; i > 0; i--){
		grid[# px, py] = i;
		px--;
	
		if (px < 0) {
			show_error("SNAKE OUT OF BOUNDS", true)
		}
	}
}