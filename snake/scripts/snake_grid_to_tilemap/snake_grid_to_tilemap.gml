/// @function			snake_grid_to_tilemap(grid, tilemap)

function snake_grid_to_tilemap() {
	for(var ix = 0; ix < width; ix++)
	for(var iy = 0; iy < height; iy++) {

		if(snakeGrid[# ix, iy]) {
			var tileData = 1;
			if (snakeGrid[# ix, iy] == length) {
				tileData = 2;
			}
			if (snakeGrid[# ix, iy] == 1) {
				tileData = 3;
			}
			
			tileData |= global.tile_flags[snakeDirGrid[# ix, iy]];
			
			tilemap_set(snakeTileMap, tileData, ix, iy);
		}

	}
}