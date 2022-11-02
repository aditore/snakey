/// @function			food_grid_to_tilemap(grid, tilemap);

function food_grid_to_tilemap(grid, tilemap){
	
	var w = ds_grid_width(grid);
	var h = ds_grid_height(grid);

	for(var ix = 0; ix < w; ix++)
	for(var iy = 0; iy < h; iy++) {

		if(grid[# ix, iy]) {
			tilemap_set(tilemap, 1, ix, iy);
		}

	}
}