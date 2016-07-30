///wlight_angles_visible(ds_vector angles, float start, float end, float center, tile_type type)
var _angles = argument0;
var _start = argument1;
var _end = argument2;
var _center = argument3;
var _type = argument4;

for (var i = 0; i < ds_vector_length(_angles); ++i)
{
    var _otherstart = ds_vector_get(_angles, i, 0);
    var _otherend = ds_vector_get(_angles, i, 1);
    
    if (_type == 1 &&
        _otherstart <= _start &&
        _otherend >= _end)
    {
        return false
    }
    else if (_type == 0 &&
        _otherstart <= _center &&
        _otherend >= _center && (
        _otherstart <= _start ||
        _otherend >= _end))
    {
        return false;
    }
}
return true;

