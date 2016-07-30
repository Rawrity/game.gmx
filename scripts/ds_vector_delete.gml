///ds_vector_delete(ds_vector id, int index)
var _size = ds_list_find_value(argument0, 0);

for (var _i = 0; _i < _size; ++_i)
{
    ds_list_delete(argument0, argument1*_size); // one ahead will drop down
}


