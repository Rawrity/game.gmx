///ds_vector_insert(ds_vector id, int index, var value [, ...])
var _size = ds_list_find_value(argument[0], 0);

for (var _i = 0; _i < _size; ++_i)
{
    ds_list_insert(argument[0], 1+(argument[1]*_size)+_i, argument[_i+2]);
}

