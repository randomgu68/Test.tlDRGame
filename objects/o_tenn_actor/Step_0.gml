// Inherit the parent event
event_inherited();

sinnermovement += 0.05

if(instance_exists(o_enc) and o_enc.battle_state == BATTLE_STATE.TURN) {
    
    animate(image_alpha, 0, 10, anime_curve.linear,id, "image_alpha", true)
    
    /*
    if image_alpha > 0 {
        image_alpha -= 0.05
    } else {
        image_alpha = 0
    }
    */
} else {
    
    animate(image_alpha, 1, 10, anime_curve.linear,id, "image_alpha", true)
    
    /*
    if image_alpha < 1 {
        image_alpha += 0.05
    } else {
        image_alpha = 1
    }
    */
}