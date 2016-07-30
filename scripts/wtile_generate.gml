///wtile_generate()
Tiles = wtile_init();
var surface = wtile_begin();

wtile_add(Tiles, surface, true, "Player?", "How can it be so impossibly empty?");
// todo create a wrapper function that adds them to a list that is then iterated and added to the tile table

wtile_add_all(Tiles, surface);

wtile_end(surface);

