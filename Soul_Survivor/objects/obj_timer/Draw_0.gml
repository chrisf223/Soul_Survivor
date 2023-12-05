draw_set_color(c_white)
draw_set_font(font_timer)
draw_set_halign(fa_right)
draw_set_valign(fa_top)

var t = ""
t+= string(t_min)
t+= ":"
if t_sec>9 {t+=""+string(t_sec)}
if t_sec<10 {t+="0"+string(t_sec)}
t+="."
t+= string(t_mil)
if instance_exists(obj_player) {
	draw_text(obj_player.x,obj_player.y -20,t)
}




