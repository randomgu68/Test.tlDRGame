// Inherit the parent event
event_inherited();

s_intro = spr_omega_tenn_idle

s_emote = spr_omega_tenn_emote

s_signals = spr_omega_tenn_signals

facenumb = 3
colorface = c_white

image_xscale = 0.6
image_yscale = 0.6

s_drawer = function(_sprite, _index, _xx, _yy, _xscale, _yscale, _angle, _blend, _alpha) {
    draw_sprite_ext(spr_omega_tenn_reel,_index,_xx-64,_yy+(sin(sinnermovement))*8,_xscale,_yscale,_angle,_blend,_alpha)
    draw_sprite_ext(spr_omega_tenn_reel,_index,_xx+64,_yy+(sin(sinnermovement))*8,_xscale,_yscale,_angle,_blend,_alpha)
    draw_sprite_ext(_sprite, _index,
        _xx, _yy+(sin(sinnermovement))*8, 
        _xscale, _yscale, 
        _angle, _blend, _alpha
    )
    draw_sprite_ext(spr_tenn_faces,facenumb,_xx+6,_yy+2+(sin(sinnermovement))*8,_xscale,_yscale,_angle,colorface,_alpha)
}

sinnermovement = 0

s_intro_spd = 0
s_frozen = undefined

is_enemy = false
chase_encounter = false
enemy_struct = {}
