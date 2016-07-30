///var value ds_vector_get(ds_vector id, int first index, int second index)
var _size = ds_list_find_value(argument0, 0);

return ds_list_find_value(argument0, 1+(argument1*_size)+argument2);


