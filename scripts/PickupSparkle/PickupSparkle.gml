function PickupSparkle(){
	var i = 0;

	for(i = 0; i < 8; i++){
		var ranHsp = (random(4)-2)/5;
		with(instance_create_layer(x,y,"FX",oPickupSparkle)){
			hsp = ranHsp;
		}
	}
}