timer ++

// Inherit the parent event
event_inherited();

var image = afterimage(0.5)

// Horizontal line up
var line1 = collision_line(line1_x1,line1_y1,line1_x2,line1_y2,id,true,false)

// Horizontal line down
var line2 = collision_line(line2_x1,line2_y1,line2_x2,line2_y2,id,true,false)

// vertical line left
var line3 = collision_line(line3_x1,line3_y1,line3_x2,line3_y2,id,true,false)

// vertical line right
var line4 = collision_line(line4_x1,line4_y1,line4_x2,line4_y2,id,true,false)

if(line1) {
    vspeed = -vspeed
}

if(line2) {
    vspeed = -vspeed
}

if(line3) {
    hspeed = -hspeed
}

if(line4) {
    hspeed = -hspeed
}

if(timer == timer_end) {
    timer = timer_end
}

if(pattern == "smashcutstars") {
    if(timer == 290) {
        animate(1,0,5,anime_curve.sine_in_out,id,"image_alpha")
    }
    
    if(timer % randomvalue == 0) {
        
        
        var bullet1 = instance_create(o_tldr_enc_bullet,x-12,y,depth)
        bullet1.speed = 5
        bullet1.direction = 180
        
        var bullet2 = instance_create(o_tldr_enc_bullet,x+12,y,depth)
        bullet2.speed = 5
        bullet2.direction = 0
        
        var bullet3 = instance_create(o_tldr_enc_bullet,x,y-12,depth)
        bullet3.speed = 5
        bullet3.direction = 90
        
        var bullet4 = instance_create(o_tldr_enc_bullet,x,y+12,depth)
        bullet4.speed = 5
        bullet4.direction = 270
    }
    
    if(image_alpha == 0) {
        instance_destroy()
    }
}


/*
var left = collision_rectangle(pointinitleftx,pointinitlefty,pointfinalleftx,pointfinallefty,id,false,false)
var right = collision_rectangle(pointinitrightx,pointinitrighty,pointfinalrightx,pointfinalrighty,id,false,false)
var up = collision_rectangle(pointinitupx,pointinitupy,pointfinalupx,pointfinalupy,id,false,false)
var down = collision_rectangle(pointinitdownx,pointinitdowny,pointfinaldownx,pointfinaldowny,id,false,false)

if left != noone {
    direction += 45
}

if right != noone {
    direction += 45
}

if up != noone {
    direction += 45
}

if down != noone {
    direction += 45
}

if(o_enc.battle_state != BATTLE_STATE.TURN ) {
    instance_destroy()
}
*/
