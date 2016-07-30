///wlight_refresh_octant(x, y, octant, range)
var _x = argument0;
var _y = argument1;
var _oct = argument2;
var _range = argument3;

var fullshadow = false;

ds_vector_clear(Shadows);

for (var row = 1; row <= _range; ++row)
{
    for (var col = 0; col <= row; ++col)
    {
        var tx = _x + wlight_octant_x(row, col, _oct);
        var ty = _y + wlight_octant_y(row, col, _oct);
        
        if (tx < 0 || tx > 63 || ty < 0 || ty > 63)
        {
            break;
        }
        
        if (fullshadow)
        {
            if (ds_grid_get(Light, tx, ty) != -1)
            {
                ds_grid_set(Light, tx, ty, brightness);
            }
        }
        else
        {
            var startangle = col / (row + 1);
            var centerangle = (col + 0.5) / (row + 1);
            var endangle = (col + 1) / (row + 1);
            
            var type = (ds_grid_get(World, tx, ty) != 8);
            
            var vis = wlight_angles_visible(Shadows, startangle, endangle, centerangle, type);
            
            //ds_grid_set(Light, tx, ty, max(vis, ternary((ds_grid_get(Light, tx, ty) != -1), brightness, y)));
            
            if (vis)
            {
                ds_grid_set(Light, tx, ty, 1);
                
                if (type == 1)
                {
                    wlight_angles_add(Shadows, startangle, endangle);
                    fullshadow = wlight_angles_full(Shadows);
                }
            }
            else if (ds_grid_get(Light, tx, ty) != -1)
            {
                ds_grid_set(Light, tx, ty, brightness);
            }
        }
    }
}

