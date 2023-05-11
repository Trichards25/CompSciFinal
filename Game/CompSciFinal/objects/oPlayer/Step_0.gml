hInput = (keyboard_check(ord("D")) + keyboard_check(vk_right)) - (keyboard_check(ord("A")) + keyboard_check(vk_left));
vInput = (keyboard_check(ord("S")) + keyboard_check(vk_down)) - (keyboard_check(ord("W")) + keyboard_check(vk_up));

if(hInput != 0 or vInput != 0){
dir = point_direction(0,0,hInput,vInput);

moveX = lengthdir_x(moveSpd, dir);
moveY = lengthdir_y(moveSpd, dir);
sprite_index = sPlayerRun_strip7;
if(moveX != 0){
	if(moveX <0){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
}
x += moveX;
y += moveY;
}
else{
	sprite_index = sPlayerIdle_strip4;
}

cd--;

if(cd <= 0 && mouse_check_button(mb_left)){
	cd = cdValue;
	audio_play_sound(aBullet, 1, false);
	with(instance_create_layer(x,y, "bullets", oBullet)){
		direction = oGun.image_angle;
		speed = 8;
	}
}

