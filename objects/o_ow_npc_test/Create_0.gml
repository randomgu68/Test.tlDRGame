// Inherit the parent event
event_inherited();
image_xscale = 0.5
image_yscale = 0.5

interaction_code = function () {
    global.party_names = ["kris", "susie", "ralsei"]
    
    cutscene_create()
    cutscene_player_canmove(false)
    cutscene_party_follow(false)
    cutscene_actor_move(o_actor_kris, [
		new actor_movement(o_actor_kris.x-40,o_actor_kris.y,30),
        new actor_movement(o_actor_kris.x-40,o_actor_kris.y,10,,,DIR.RIGHT)
	],false)
    cutscene_actor_move(o_actor_susie, [
		new actor_movement(o_actor_kris.x-40,o_actor_kris.y-40,30),
        new actor_movement(o_actor_kris.x-40,o_actor_kris.y-40,10,,,DIR.RIGHT)
	],false)
    cutscene_actor_move(o_actor_ralsei, [
		new actor_movement(o_actor_kris.x-40,o_actor_kris.y+40,30),
        new actor_movement(o_actor_kris.x-40,o_actor_kris.y+40,10,,,DIR.RIGHT)
	],false)
    cutscene_camera_pan(o_actor_kris.x,o_actor_kris.y,true,anime_curve.sine_in_out)
    cutscene_dialogue("* ahi dios mio ahi dios mio")
    cutscene_dialogue("* que rico que aprietas patricio")
    cutscene_dialogue("* se lagueo dios mio")

    cutscene_dialogue("{char(ralsei, 15)}* que me importa")
    cutscene_party_follow(true)
    cutscene_player_canmove(true)
    cutscene_play()
}