// Inherit the parent event
event_inherited();

s_intro = spr_omega_tenn_idle

s_emote = spr_omega_tenn_emote

s_signals = spr_omega_tenn_signals

image_xscale = 0.6
image_yscale = 0.6

s_drawer = function(_sprite, _index, _xx, _yy, _xscale, _yscale, _angle, _blend, _alpha) {
    draw_sprite_ext(spr_omega_tenn_reel,_index,_xx-64,_yy,_xscale,_yscale,_angle,_blend,_alpha)
    draw_sprite_ext(spr_omega_tenn_reel,_index,_xx+64,_yy,_xscale,_yscale,_angle,_blend,_alpha)
    draw_sprite_ext(_sprite, _index, 
        _xx, _yy, 
        _xscale, _yscale, 
        _angle, _blend, _alpha
    )
}

sinnermovement = 0

s_intro_spd = 0
s_frozen = undefined

is_enemy = true
chase_encounter = false
enemy_struct = {}
