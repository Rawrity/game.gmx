///wlight_angles_add(ds_vector angles, float start, float end)

var _angles = argument0;

var _start = argument1;
var _end = argument2;

var _index = 0;
var _currstart = -1;

for (; _index < ds_vector_length(_angles); ++_index)
{
    _currstart = ds_vector_get(_angles, _index, 0)
    
    if (_currstart >= _start)
    {
        break;
    }
}

// if the previous shadow end covers the start
var _prev = -1;
if (_index > 0 && ds_vector_get(_angles, _index-1, 1) >= _start)
{
    _prev = _index-1;
}

// if the next shadow start covers the end
var _next = -1;
if (_index < ds_vector_length(_angles) && _currstart <= _end)
{
    _next = _index
}

if (_next != -1)
{
    if (_prev != -1)
    {
        // this shadow covers the area between 2 others
        // set the end of the previous shadow to the end of the next one
        // completely covering the area
        ds_vector_set(_angles, _prev, 1, ds_vector_get(_angles, _next, 1));
        // delete the next shadow
        ds_vector_delete(_angles, _next);
    }
    else
    {
        // covers the start of the next shadow
        // so set the next shadows start to this new shadows start
        // extending the covered area
        ds_vector_set(_angles, _next, 0, _start);
    }
}
else
{
    if (_prev != -1)
    {
        // covers the end of the previous shadow
        // so set the previous shadows end to this new shadows end
        ds_vector_set(_angles, _prev, 1, _end);
    }
    else
    {
        // this shadow is not touching any others
        // so add it as a new shadow
        ds_vector_insert(_angles, _index, _start, _end);
    }
}

