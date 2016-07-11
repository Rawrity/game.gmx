#define bresenham_octant_x
///x bresenham_octant_x(int x, int y, octant)
switch (argument2)
{
     case 0: return argument1;//, y
     case 1: return argument0;//, x
     case 2: return argument0;//, -x
     case 3: return argument1;//, y
     case 4: return -argument1;//, -y
     case 5: return -argument0;//, -x
     case 6: return -argument0;//, x
     case 7: return -argument1;//, -y
}

#define bresenham_octant_y
///y bresenham_octant_y(int x, int y, octant)
switch (argument2)
{
     case 0: return -argument0;//, y
     case 1: return -argument1;//, x
     case 2: return argument1;//, -x
     case 3: return argument0;//, y
     case 4: return argument0;//, -y
     case 5: return argument1;//, -x
     case 6: return -argument1;//, x
     case 7: return -argument0;//, -y
}