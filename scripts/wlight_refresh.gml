//wlight_refresh(LightSource light)
ds_grid_set(Light, argument0, argument1, 1);
for (var i = 0; i < 8; ++i)
{
    wlight_refresh_octant(argument0, argument1, i, argument2);
}

