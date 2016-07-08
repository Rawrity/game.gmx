///ds_list tile wtile_add(ds_list tiles, surface tilesheet, string flavor_text) // todo figure this out

var tile;
var index = ds_list_size(argument0);

//debug
var xx = index % (surface_get_width(argument1)/16);
var yy = floor(index / (surface_get_height(argument1)/16));

tile = ds_list_create();
ds_list_add(tile, index); // id
ds_list_add(tile, sprite_create_from_surface(argument1, xx*16, yy*16, 16, 16, false, false, 0, 0)); // sprite
ds_list_add(tile, argument2); // inspection info
ds_list_add(argument0, tile); // add it to the tile set

return tile;
