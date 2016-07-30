///ds_list tile wtile_add(ds_list tiles, surface tilesheet, bool solid, string name, string description)

var tile;
var index = ds_list_size(argument0);

var xx = index % wtile_sheet_width;
var yy = floor(index / wtile_sheet_width);
//show_debug_message(string(xx) + ", " + string(yy));

tile = ds_list_create();
ds_list_add(tile, index); // id
ds_list_add(tile, sprite_create_from_surface(argument1, xx*16, yy*16, 16, 16, false, false, 0, 0)); // sprite
ds_list_add(tile, argument2); // solid
ds_list_add(tile, argument3); // name
ds_list_add(tile, argument4); // description
ds_list_add(argument0, tile); // add it to the tile set

return tile;
