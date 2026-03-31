function tldrGame_enemy_omt() : enemy() constructor{
	name = "OMEGA TENN A. VISION"
	obj = o_tenn_actor
	turn_object = o_tenn_enc_turn
	
	// stats
	hp =		5000
	max_hp =	5000
	attack =	30
	defense =	6
    
    can_spare = false
    mercy_add_pity_percent = 0
	
    // sprites
    s_idle = spr_omega_tenn_idle
    s_hurt = spr_omega_tenn_idle
    s_spare = s_idle
    
	// acts
	acts = [
		{
			name: "Check",
			party: [],
			desc: "Useless analysis",
			exec: function() {
				encounter_scene_dialogue("* OMEGA TENN A. VISION - YOUR BEST NIGHTMARE, HE'S GOING TO SHOW YOU WHAT'S TO BE GROOVY.")
			}
		},
	]
    
	// text
	dialogue = function(slot){
        cutscene_create()
        cutscene_set_variable(o_tenn_actor,"cutscene_finished",false)
        cutscene_set_variable(o_enc,"waiting","true")
        cutscene_set_variable(o_enc,"waiting","false")
        cutscene_set_variable(o_tenn_actor,"cutscene_finished",true)
        cutscene_play()
	}
}