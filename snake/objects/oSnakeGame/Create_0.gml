/// @description Insert description here

snakeTileMap = layer_tilemap_get_id("tiles_snake");

width = tilemap_get_width(snakeTileMap);
height = tilemap_get_height(snakeTileMap);

snakeGrid = ds_grid_create(width, height);

length = 4;


headX = width / 2;
headY = height / 2;

snakeDir = DIRECTIONS.right;

init_snake(snakeGrid, headX, headY, length);
tilemap_clear(snakeTileMap, 0);
snake_grid_to_tilemap(snakeGrid, snakeTileMap);

updateSpeed = 20;

alarm[0] = updateSpeed;