/// @function			snake_grid_to_tilemap(grid, tilemap)

function snake_grid_to_tilemap() {
	for(var ix = 0; ix < width; ix++)
	for(var iy = 0; iy < height; iy++) {

		if(snakeGrid[# ix, iy]) {
			var tileIndex = 1;
			var tileDir = snakeDirGrid[# ix, iy] & 3;
			var tileDirP = snakeDirGrid[# ix, iy] >> 2;
			var tileFlags = global.tile_flags[tileDir];
			
			if (snakeGrid[# ix, iy] == 1) {
				tileIndex = 3;
				tileDir = snakeDirGrid[# ix, iy] >> 2;
			} else if (snakeGrid[# ix, iy] == length) {
				tileIndex = 2;
				tileFlags = global.tile_flags[tileDir];
			} else if (tileDir != tileDirP) {
				tileIndex = 4;
				tileFlags = global.c_tile_flags[snakeDirGrid[# ix, iy]];
			}
			

			tilemap_set(snakeTileMap, tileIndex | tileFlags, ix, iy);
		}

	}
}