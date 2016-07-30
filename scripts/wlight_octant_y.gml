///int y wlight_octant_y(int x, int y, int octant)
var _x = argument0;
var _y = argument1;
var _octant = argument2;

switch (_octant)
{
    case 0: return _y;
    case 1: return _x;
    case 2: return _x;
    case 3: return _y;
    case 4: return -_y;
    case 5: return -_x;
    case 6: return -_x;
    case 7: return -_y;
}

