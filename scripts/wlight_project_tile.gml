///ds_list shadow project_tile(row, col)

var _row = argument0;
var _col = argument1;

var _shadow = ds_list_create();

ds_list_add(_shadow,
_col / (_row+2),
(_col+1) / (_row+1),
_col,
_row + 2,
_col + 1,
_row + 1);

return _shadow;
