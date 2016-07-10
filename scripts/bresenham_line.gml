var bx1 = argument0;
var by1 = argument1;
var bx2 = argument2;
var by2 = argument3;
var temp;

var steep = (abs(by2 - by1) > abs(bx2 - bx1));

if (steep)
{
    temp = bx1;
    bx1 = by1;
    by1 = temp;
    
    temp = bx2;
    bx2 = by2;
    by2 = temp;
}

if (bx1 > bx2)
{
    temp = bx1;
    bx1 = bx2;
    bx2 = temp;
    
    temp = by1;
    by1 = by2;
    by2 = temp;
}

var dx = bx2 - bx1;
var dy = by2 - by1;

//var error = -1;
var error = dx/2;
var ystep = ternary((by1 < by2), 1, -1);
//var derror = abs(dy/dx);
var yy = by1;
for (var xx = bx1; xx < bx2; ++xx)
{
    if (steep)
    {
        draw_point(yy, xx);
    }
    else
    {
        draw_point(xx, yy);
    }
    error -= dy;
    if (error < 0)
    {
        yy += ystep;
        error += dx;
    }
}

