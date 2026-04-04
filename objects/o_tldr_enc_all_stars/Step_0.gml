// Inherit the parent event
event_inherited();

var line1 = collision_line(line1_x1,line1_y1,line1_x2,line1_y2,id,true,false)
var line2 = collision_line(line2_x1,line2_y1,line2_x2,line2_y2,id,true,false)
var line3 = collision_line(line3_x1,line3_y1,line3_x2,line3_y2,id,true,false)
var line4 = collision_line(line3_x1,line3_y1,line3_x2,line3_y2,id,true,false)

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
