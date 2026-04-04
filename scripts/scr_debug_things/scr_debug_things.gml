enum ALT_COLORS {
    alt_blue_color = #0040c0,
    alt_darker_blue = #000080
}

function ossafe_fill_rectangle_color(x1, y1, x2, y2, col1, col2, col3, col4, outline = false)
{
    
    if (x1 > x2)
    {
        var temp = x1;
        x1 = x2;
        x2 = temp;
    }
    
    if (y1 > y2)
    {
        var temp = y1;
        y1 = y2;
        y2 = temp;
    }
    
    draw_rectangle_color(x1, y1, x2, y2, col1, col2, col3, col4, outline);
}

function cameray() {
    return o_camera.y
}

function camerax() {
    return o_camera.x
}

function camerawidth() {
    return o_camera.width
}

function cameraheight() {
    return o_camera.height
}
