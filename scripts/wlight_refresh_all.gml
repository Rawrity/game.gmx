#define wlight_refresh_all
///wlight_refresh_all()
/*for (var i = 0; i < ds_list_size(LightSources); ++i)
{
    wlight_refresh(ds_list_find_value(LightSources, i));
}




*/


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
//wlight_refresh(LightSource light)
for (var i = 0; i < 8; ++i)
{
    wlight_refresh_octant(argument0, argument1, i, argument2);
}
//ds_grid_set(Light, argument0, argument1, 1)

#define wlight_refresh_octant
///wlight_refresh_octant(x, y, octant, range)
var _x = argument0;
var _y = argument1;
var _oct = argument2;
var _range = argument3;

for (var si = 0; si < ds_list_size(shadows); ++si)
{
    var shadow = ds_list_find_value(shadows, si);
    ds_list_destroy(shadow);
    show_debug_message("SCREAMING");
}
ds_list_clear(shadows);

var fullshadow = false;
var shadow = -1;

for (var row = 1; row < _range; ++row)
{
    for (var col = 0; col <= row; ++col)
    {
        var tx = _x + bresenham_octant_x(row, col, _oct);
        var ty = _y + bresenham_octant_y(row, col, _oct);
            
        if (fullshadow)
        {
            ds_grid_set(Light, tx, ty, 0);
        }
        else
        {
            if (ds_exists(shadow, ds_type_list))
            {
                //ds_list_destroy(shadow);
                show_debug_message("existing" + string(shadow));
            }
            
            /*var*/shadow = wlight_project_tile(row, col);
            var str = "";
            for (var si = 0; si < ds_list_size(shadow); ++si)
            {
                str += ", " + string(ds_list_find_value(shadow, si));
            }
            //show_debug_message("shadow " + string(shadow) + str);
            var vis = !wlight_is_in_shadow(shadows, shadow);
            
            ds_grid_set(Light, tx, ty, vis);//max(vis  / power(0.94, -row), 0.2));
            
            // the shadow gets added to the shadows list, and needs to continue existing as it only passes the id
            // otherwise if it doesn't get added, this shadow can be safely deleted.
            if (vis && ds_grid_get(World, tx, ty) == 1)
            {
                wlight_add_projection(shadows, shadow);
                
                fullshadow = wlight_is_full_shadow(shadows);
            }
            else
            {
                ds_list_destroy(shadow);
            }
        }
        
    }
}

//ds_list_destroy(shadows);
//ds_list_destroy(shadow);
//ds_list_destroy(shadows);
/*for (var piece = 0; piece < ds_list_size(trashbin); ++piece)
{
    var trash = ds_list_find_value(trashbin, piece);
    
    if (ds_exists(trash, ds_type_list))
    {
        ds_list_delete(trashbin, trash);
        ds_list_destroy(trash);
    }
    else
    {
        show_debug_message("ds_list " + string(trash) + " no longer exists!!!");
    }
}
ds_list_destroy(trashbin);*/
