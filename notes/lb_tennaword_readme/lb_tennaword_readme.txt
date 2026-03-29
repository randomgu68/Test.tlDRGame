# Tenna Word library
No credit required.

---

## Setup:
1. add the following to o_text_typer's User Event 0 (before argstrings is reset)
```
if command == "ten_word" { // ten_word(string)
	var inst = instance_create(o_lb_tenword_text_word, x + xoff, y + yoff, depth)
    
    inst.sprite_index = asset_get_index($"spr_lb_tenword_{arg[0]}")
    inst.gui = gui
    inst.image_xscale = xscale/2
    inst.image_yscale = yscale/2
    
	array_push(mychars, inst)
	xoff += sprite_get_width(inst.sprite_index) * xscale/2
	
	pause = 5
}
```
2. use the command `{ten_word(your-word-here)}` in text_typer created text for it to be added to the current line