if(dead){
	sprite_index = sEnemyDead;
	speed = 0;
}else{
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = random_range(1.5, 3);

	if(direction > 90 && direction < 270){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
}