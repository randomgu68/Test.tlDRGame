if pattern == "smashcut" {
    if (!surface_exists(tennsmashcut))
        tennsmashcut = surface_create(640, 480);
    surface_set_target(tennsmashcut);
    draw_clear(c_black);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    var cut = o_enc_box.y - o_camera.y;
    var cut2 = o_camera.height - cut;
    
    timer_battle_2++;
    
    var xoffset = 0;
    
    if (timer_battle_2 == 1)
        xoffset = 10;
    
    if (timer_battle_2 == 2)
        xoffset = -9;
    
    if (timer_battle_2 == 3)
        xoffset = 8;
    
    if (timer_battle_2 == 4)
        xoffset = -7;
    
    if (timer_battle_2 == 5)
        xoffset = 6;
    
    if (timer_battle_2 == 6)
        xoffset = -5;
    
    if (timer_battle_2 == 7)
        xoffset = 4;
    
    if (timer_battle_2 == 8)
        xoffset = -3;
    
    if (timer_battle_2 == 9)
        xoffset = 2;
    
    if (timer_battle_2 == 10)
        xoffset = -1;
    
    if (timer_battle_2 == 11)
        xoffset = 0;
    
    ossafe_fill_rectangle_color(camerax(), cameray(), camerax() + camerawidth(), cameray() + cameraheight(), 0, 0, 0, 0);
    draw_surface_part(tennsmashcut, 0, 0, 320, cut, o_camera.x  + (sin(timer_battle) * 24 ), o_camera.y);
    draw_surface_part(tennsmashcut, 0, 0, 320, cut, (o_camera.x  + (sin(timer_battle) * 24 )) - 640, o_camera.y);
    draw_surface_part(tennsmashcut, 0, 0, 320, cut, o_camera.x  + (sin(timer_battle) * 24 ) + 640, o_camera.y);
    draw_surface_part(tennsmashcut, 0, cut, 320, cut2, o_camera.x  + (cos(timer_battle) * 24 ), o_camera.y + cut);
    draw_surface_part(tennsmashcut, 0, cut, 320, cut2, (o_camera.x  + (cos(timer_battle) * 24 )) - 640, o_camera.y + cut);
    draw_surface_part(tennsmashcut, 0, cut, 320, cut2, o_camera.x  + (cos(timer_battle) * 24 ) + 640, o_camera.y + cut);
}

draw_self()