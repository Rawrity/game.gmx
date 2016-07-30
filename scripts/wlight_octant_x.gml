///int x wlight_octant_x(int x, int y, int octant)
var _x = argument0;
var _y = argument1;
var _octant = argument2;

switch (_octant)
{
    case 0: return _x;
    case 1: return _y;
    case 2: return -_y;
    case 3: return -_x;
    case 4: return -_x;
    case 5: return -_y;
    case 6: return _y;
    case 7: return _x;
}

