///wlight_is_full_shadow(Shadows shadows)
var _shadows = argument0;

if (ds_list_size(_shadows) == 1)
{
    var _shadow = ds_list_find_value(_shadows, 0);
    
    if (ds_list_find_value(_shadow, 0) == 0 &&
        ds_list_find_value(_shadow, 1) == 1)
    {
        return true;
    }
}
return false;

