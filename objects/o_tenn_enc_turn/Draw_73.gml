sinevalue += sinespeed

if pattern == "smashcut" {
    if (!surface_exists(tennsmashcut))
        tennsmashcut = surface_create(320, 240);
    surface_set_target(tennsmashcut);
    draw_clear(c_black);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    var cut = o_enc_box.y - o_camera.y;
    var cut2 = o_camera.height - cut;
    
    ossafe_fill_rectangle_color(o_camera.x, o_camera.y, o_camera.x + o_camera.width, o_camera.y + o_camera.height, 0, 0, 0, 0);
    draw_surface_part(tennsmashcut, 0, 0, o_camera.width, cut, o_camera.x  + (sin(sinevalue) * 18 ), o_camera.y);
    draw_surface_part(tennsmashcut, 0, 0, o_camera.width, cut, (o_camera.x  + (sin(sinevalue) * 18 )) - o_camera.width, o_camera.y);
    draw_surface_part(tennsmashcut, 0, 0, o_camera.width, cut, o_camera.x  + (sin(sinevalue) * 18 ) + o_camera.width, o_camera.y);
    draw_surface_part(tennsmashcut, 0, cut, o_camera.width, cut2, o_camera.x  + (cos(sinevalue) * 18 ), o_camera.y + cut);
    draw_surface_part(tennsmashcut, 0, cut, o_camera.width, cut2, (o_camera.x  + (cos(sinevalue) * 18 )) - o_camera.width, o_camera.y + cut);
    draw_surface_part(tennsmashcut, 0, cut, o_camera.width, cut2, o_camera.x  + (cos(sinevalue) * 18 ) + o_camera.width, o_camera.y + cut);
}

draw_self()