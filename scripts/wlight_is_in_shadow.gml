///bool wlight_is_in_shadow(ShadowLine line, Shadow shadow)

var _shadowline = argument0;
var _shadow = argument1;

for (var _i = 0; _i < ds_list_size(_shadowline); ++_i)
{
    //show_debug_message(ds_list_size(_shadowline));
    
    var _shdw = ds_list_find_value(_shadowline, _i);
    
    if (wlight_contains_shadow(_shdw, _shadow))
    {
        return true;
    }
}
return false;

