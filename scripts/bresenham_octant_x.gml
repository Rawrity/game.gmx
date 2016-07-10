#define bresenham_octant_x
///x bresenham_octant_x(octant, int x, int y)
switch (argument0)
{
     case 0: return argument1;//, y
     case 1: return argument2;//, x
     case 2: return argument2;//, -x
     case 3: return -argument1;//, y
     case 4: return -argument1;//, -y
     case 5: return -argument2;//, -x
     case 6: return -argument2;//, x
     case 7: return argument1;//, -y
}

#define bresenham_octant_y
///y bresenham_octant_y(octant, int x, int y)
switch (argument0)
{
     case 0: return argument2;//, y
     case 1: return argument1;//, x
     case 2: return -argument1;//, -x
     case 3: return argument2;//, y
     case 4: return -argument2;//, -y
     case 5: return -argument1;//, -x
     case 6: return argument1;//, x
     case 7: return -argument2;//, -y
}
