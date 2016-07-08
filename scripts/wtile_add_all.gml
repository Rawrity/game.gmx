///wtile_add_all(ds_list tiles, surface spritesheet)
for (var i = ds_list_size(argument0); i < (surface_get_width(argument1)*surface_get_height(argument1)) / (16*16); ++i)
{
    wtile_add(argument0, argument1, false, "Tile " + string(i), "Indescribable...");
}

