event_inherited()

destroy = false

finish = false

timer = 0

pattern = o_tenn_enc_turn.pattern

timer_end = o_tenn_enc_turn.timer_end

randomvalue = choose(30, 60, 90)

/*
// left var
pointinitleftx = -24
pointinitlefty = 0
pointfinalleftx = 0
pointfinallefty = 160

// right var
pointinitrightx = 320
pointinitrighty = 0
pointfinalrightx = 344
pointfinalrighty = 160

// up var
pointinitupx = 0
pointinitupy = -23
pointfinalupx = 320
pointfinalupy = 0

// down var
pointinitdownx = 0
pointinitdowny = 183
pointfinaldownx = 320
pointfinaldowny = 160
*/

image_alpha = 0

// line 1
line1_x1 = 0
line1_y1 = 0
line1_x2 = 320
line1_y2 = 0

// line 2
line2_x1 = 0
line2_y1 = 160
line2_x2 = 320
line2_y2 = 160

// line 3
line3_x1 = 0
line3_y1 = 0
line3_x2 = 0
line3_y2 = 160

// line 4
line4_x1 = 319
line4_y1 = 0
line4_x2 = 319
line4_y2 = 160

animate(0,1,20,anime_curve.sine_in_out,id,"image_alpha")