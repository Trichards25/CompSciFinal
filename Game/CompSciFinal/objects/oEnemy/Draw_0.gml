draw_self();
if(!dead){
	if(direction > 90 && direction < 270){
			draw_healthbar(x-sprite_width, y-20, x+sprite_width, y - 15, 100*(currentHp/maxHp), c_black, c_red, c_green, 1, true, false);
		}else{
			draw_healthbar(x-sprite_width, y-20, x+sprite_width, y - 15, 100*(currentHp/maxHp), c_black, c_red, c_green, 0, true, false);
		}
}