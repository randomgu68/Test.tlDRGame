function tldrGame_enc_set_omt() : enc_set() constructor {
	debug_name	=	"Omega Tenn A visionarios"
    
    bgm = mus_neverglooby
    bg_type = ENC_BG.TENNABATTLE
    
    
	enemies = [
		new tldrGame_enemy_omt(),
	]
    
    flavor = function () {
        if o_enc.turn_count == 0 {
            return "* Say it, NEVER GLOOBY!"
        } else {
        	return choose("* Your way shines with power","* TennVision is watching you.{resetx}{br}* {col(r)}You{reset_col} are watching TennVision.")
        }
    }
    
	enemies_pos = [
		[-120, -22, true],
	]
}