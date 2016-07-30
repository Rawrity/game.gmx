///ds_vector_add(ds_vector id, var value [, ...])
var _size = ds_list_find_value(argument[0], 0);

for (var _i = 0; _i < _size; ++_i)
{
    ds_list_add(argument[0], argument[_i+1]);
}

