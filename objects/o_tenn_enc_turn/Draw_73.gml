if pattern == "smashcutstars" {
    if(instance_exists(o_enc_box)) {
        o_enc_box.width = 112
        o_enc_box.height = 112
    }
    
    var room_value_height = 240
    var cut1 = 85
    var cut2 = 170
    
    var width = 640
    var height = 480
    var halfscale = 0.5
    
    if(timer == 15 and animslashstart) {
        instance_create(o_tldrgame_eff_slash,0,0,-8000)
        screen_shake(5,15)
        animslashstart = false
    }
    
    if(timer >= 30) {
        
        sinvalue += sinspeed
        
        if (!surface_exists(surfacetemplate)) {
            surfacetemplate = surface_create(640,480)
        }
        
        surface_set_target(surfacetemplate)
        draw_clear(c_black)
        draw_surface(application_surface,0,0)
        surface_reset_target()
        ossafe_fill_rectangle_color(0, 0, 0 + 320, 0 + 240, 0, 0, 0, 0);
        draw_surface_part_ext(surfacetemplate,0,0,width,170,0+sin(sinvalue)*16,0,halfscale,halfscale,c_white,1)
        draw_surface_part_ext(surfacetemplate,0,0,width,170,0+sin(sinvalue)*16,0,halfscale,halfscale,c_white,1)
        draw_surface_part_ext(surfacetemplate,0,0,width,170,0+sin(sinvalue)*16,0,halfscale,halfscale,c_white,1)
        draw_surface_part_ext(surfacetemplate,0,170,width,340,0-cos(sinvalue)*16,85,halfscale,halfscale,c_white,1)
        draw_surface_part_ext(surfacetemplate,0,170,width,340,0-cos(sinvalue)*16,85,halfscale,halfscale,c_white,1)
        draw_surface_part_ext(surfacetemplate,0,170,width,340,0-cos(sinvalue)*16,85,halfscale,halfscale,c_white,1)
    }
    
}

draw_self()