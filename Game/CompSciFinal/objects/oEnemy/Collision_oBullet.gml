hp-=oPlayer.damage;
instance_destroy(other);
if(hp <= 0){
	audio_play_sound(aDeath, 1, false);
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other);
}
