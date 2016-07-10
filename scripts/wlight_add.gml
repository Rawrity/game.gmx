///ds_list light wlight_add(ds_list LightSources, int tile_x, int tile_y, int radius, int power)

var light = ds_list_create();

ds_list_add(light, ds_list_size(light), argument1, argument2, argument3, argument4);
ds_list_add(argument0, light);

return light;
