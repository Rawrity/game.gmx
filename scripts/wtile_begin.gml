///surface spritesheet tileset wtile_begin()
var tileset = sprite_add("tileset.png", 1, false, false, 0, 0); // load

var surface = surface_create(sprite_get_width(tileset), sprite_get_height(tileset));

surface_set_target(surface);
draw_sprite(tileset, 0, 0, 0); // render
surface_reset_target();

sprite_delete(tileset); // free

return surface;
