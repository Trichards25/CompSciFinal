currentHp-=oPlayer.damage;
with instance_create_layer(x,y, "DmgNumber", oDmgNumFont){
	damage = oPlayer.damage;
	size = 2;
}
if(!dead){
instance_destroy(other);
}
if(currentHp <= 0){
	audio_play_sound(aDeath, 1, false);
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other);
}
