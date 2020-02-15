// Engine that drives the colored time wheel

// KNOWN BUG: the triangles only increment when their related max value is reached
//example - The last triangle dissappears even though there is still some time left

// Arguments are: x position, y position, what value to draw, 
// max value for the whole wheel, color, radius of the circle, and the transparency
// Draws this by creating a series of triangles that changes with its timer, which is determined by global.time
if (argument2 > 0) { // won't draw anything if there is no time remaining
    var i, len, tx, ty, val;
    
    var numberofsections = 1000 // number of triangles
    var sizeofsection = 360/numberofsections
    
    val = (argument2/argument3) * numberofsections 
    
    if (val > 1) { 
   
        draw_set_colour(argument4);
        draw_set_alpha(argument6);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(argument0, argument1);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // angle starts at 90 degrees
            tx = lengthdir_x(argument5, len);
            ty = lengthdir_y(argument5, len);
            draw_vertex(argument0+tx, argument1+ty);
        }
        draw_primitive_end();
    }
    draw_set_alpha(1);
	draw_set_color(c_white)
}
    