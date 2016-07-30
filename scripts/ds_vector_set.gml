///ds_vector_set(ds_vector id, int first index, int second index, var value)
var _size = ds_list_find_value(argument0, 0);
ds_list_replace(argument0, 1+(argument1*_size)+argument2, argument3);

