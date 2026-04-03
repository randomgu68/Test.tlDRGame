// Inherit the parent event
event_inherited();

/*
if(x >= 293 || x <= 0){
    direction += 45
}

if(y <=0 || y >= 147) {
    direction += 45
}
*/

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