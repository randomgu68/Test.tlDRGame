// Inherit the parent event
event_inherited();

depth = (is_in_battle ? DEPTH_ENCOUNTER.ACTORS - (y - guipos_y()) : -2000 - y)+100
depth = (is_real(depth_override) ? depth_override : depth)