do_animate(image_xscale * 1.5, image_xscale * 1, 10, "elastic_out", id, "image_xscale")
do_animate(image_yscale * 1.5, image_yscale * 1, 10, "elastic_out", id, "image_yscale")

if sprite_index = spr_lb_tenword_grand_prize {
	audio_play(snd_lb_tenword_gunshot)
}
else if sprite_index = spr_lb_tenword_hall_of_fame {
	audio_play(snd_lb_tenword_prize)
}
else if sprite_index = spr_lb_tenword_dark_fountain {
	audio_play(snd_lb_tenword_dark_fountain)
}
else if sprite_index = spr_lb_tenword_tears {
	audio_play(snd_splat)
}
else if sprite_index = spr_lb_tenword_star {
	audio_play(snd_sparkle_glock)
}
else if sprite_index = spr_lb_tenword_lovely {
	audio_play(snd_lb_tenword_lovely)
}