#define wlight_refresh_all
///wlight_refresh_all()
for (var i = 0; i < ds_list_size(LightSources); ++i)
{
    wlight_refresh(ds_list_find_value(LightSources, i));
}







/*

for light in light_map
light_refresh(light)

//

for octant in 8
light_refresh_octant(light, octant)

//

step through each tile in octant right-up
ADD to the light level at light_strength/row, break once light is 0
(add to it so multiple lights are more powerful at their meeting points)
if wall is hit, start next row at +slope column[, and write remainder to shadow_map]

// I THINK THATS IT??? NOT ALL THAT COMPLICATED BUT... ITS GM... AND MATH... KINDA...

every tile remaining has to be reset to 0 light
preferably without looping through the entire fucking map...
possibly just assume 0 light level unless otherwise?
but if we want lights to stack, we can't do that becuase old data will skew the result
perhaps we can use some sort of dirty tag? hash to keep it unique??? current tick???
we can check the position they were last updated from, but if you stand still and disable a light...


*/

#define wlight_refresh
///wlight_refresh(LightSource light)
for (var i = 0; i < 8; ++i)
{
    wlight_refresh_octant(argument0, i);
}

#define wlight_refresh_octant
///light_refresh_octant(LightSource light, octant)

/*

get light xy

translates to octant coords

iterate over octant

calculate slopes of solids

add to horizontal shadow line

break once > light range or shadow line complete

[return shadow line]

*/






