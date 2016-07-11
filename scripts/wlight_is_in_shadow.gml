///bool wlight_is_in_shadow(ShadowLine line, Shadow shadow)

var _shadowline = argument0;
var _shadow = argument1;

for (var _i = 0; _i < ds_list_size(_shadowline); ++_i)
{
    //show_debug_message(ds_list_size(_shadowline));
    
    var _shdw = ds_list_find_value(_shadowline, _i);
    
    if (!(ds_list_find_value(_shdw, 0) <= ds_list_find_value(_shadow, 0) &&
        ds_list_find_value(_shdw, 1) >= ds_list_find_value(_shadow, 1)))
    {
        return true;
    }
}
return false;

