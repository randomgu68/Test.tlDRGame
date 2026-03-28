var xx = guipos_x()
var yy = guipos_y()

siner += 0.25
siner2 += .5
tennxvalue += tennbgspeed

if bgtype != ENC_BG.NONE {
    draw_set_alpha(image_alpha)
    draw_set_color(c_black)
    draw_rectangle(-10, -10, guipos_x()+320 + 10, guipos_y()+240 + 10, false)
    draw_set_alpha(1)
}
if bgtype == ENC_BG.GRID {
    draw_sprite_tiled_ext(spr_enc_bg, 0, round_p((-50 + siner), .25), round_p((-50 + siner), .25), .5, .5, image_blend, (image_alpha / 2))
    draw_sprite_tiled_ext(spr_enc_bg, 0, round_p((-100 - siner2), .25), round_p((-105 - siner2), .25), .5, .5, image_blend, image_alpha)
}
if bgtype == ENC_BG.TENNABATTLE {
    draw_sprite_ext(tenna_bg,0,half_screenx + (sin(tennxvalue))*48,half_screeny,1.1,1.1,1,c_white,1)
}

draw_set_alpha(fade)
draw_set_color(c_black)
draw_rectangle(-10, -10, (guipos_x()+320 + 10), (guipos_y()+240 + 10), false)
draw_set_alpha(1)
draw_set_color(c_white)