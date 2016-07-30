///bool full wlight_angles_full(ds_vector angles);
var _angles = argument0;

if (ds_vector_length(_angles) == 1)
{
    if (ds_vector_get(_angles, 0, 0) == 0 &&
        ds_vector_get(_angles, 0, 1) == 1)
    {
        return true;
    }
}
return false;

