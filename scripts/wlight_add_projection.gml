///wlight_add_projection(ShadowLine shadowline, shadow projection)
var _shadows = argument0;
var _shadow = argument1;

var _shadowindex = 0;
var _currentshadow = -1;
for (; _shadowindex < ds_list_size(_shadows); ++_shadowindex)
{
    _currentshadow = ds_list_find_value(_shadows, _shadowindex);
    
    if (ds_list_find_value(_currentshadow, 0)
        >= ds_list_find_value(_shadow, 0))
    {
        break;
    }
}

var _overlappingprev = -1;
var _previousshadow = ds_list_find_value(_shadows, _shadowindex-1);
if (_shadowindex > 0 &&
    ds_list_find_value(_previousshadow, 1) >
    ds_list_find_value(_shadow, 0))
{
    _overlappingprev = _previousshadow;
}

var _overlappingnext = -1;
if (_shadowindex < ds_list_size(_shadows) &&
    ds_list_find_value(_currentshadow, 0) <
    ds_list_find_value(_shadow, 1))
{
    _overlappingnext = _currentshadow;
}

if (_overlappingnext != -1)
{
    if (_overlappingprev != -1)
    {
        ds_list_replace(_overlappingprev, 1,
        ds_list_find_value(_overlappingnext, 1));
        ds_list_replace(_overlappingprev, 4,
        ds_list_find_value(_overlappingnext, 4));
        ds_list_replace(_overlappingprev, 5,
        ds_list_find_value(_overlappingnext, 5));
        
        ds_list_destroy(ds_list_find_value(_shadows, _shadowindex));
        ds_list_delete(_shadows, _shadowindex);
    }
    else
    {
        ds_list_replace(_overlappingnext, 0,
        ds_list_find_value(_shadow, 0));
        ds_list_replace(_overlappingnext, 2,
        ds_list_find_value(_shadow, 2));
        ds_list_replace(_overlappingnext, 3,
        ds_list_find_value(_shadow, 3));
    }
}
else
{
    if (_overlappingprev != -1)
    {
        ds_list_replace(_overlappingprev, 1,
        ds_list_find_value(_shadow, 1));
        ds_list_replace(_overlappingprev, 4,
        ds_list_find_value(_shadow, 4));
        ds_list_replace(_overlappingprev, 5,
        ds_list_find_value(_shadow, 5));
    }
    else
    {
        ds_list_insert(_shadows, _shadowindex, _shadow);
    }
}
/*
if (ds_exists(_shadow, ds_type_list))
{

}

