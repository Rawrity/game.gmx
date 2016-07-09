///surface spritesheet tileset wtile_begin()
var tileset = sprite_add("tileset.png", 1, false, false, 0, 0); // load

var sheet_width = sprite_get_width(tileset);
var sheet_height = sprite_get_height(tileset);

wtile_sheet_width = sheet_width/16;
wtile_sheet_height = sheet_height/16;

var surface = surface_create(sheet_width, sheet_height);

surface_set_target(surface);
draw_sprite(tileset, 0, 0, 0); // render
surface_reset_target();

sprite_delete(tileset); // free

return surface;
