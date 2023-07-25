// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DropGems(argument0, argument1){
	var gemValues = [200, 50, 20, 10, 5, 1];
	var valueToDrop = argument0;
	var _attack_from = argument1;
	var valueOfGem = 0;
	var i;
	
	while(valueToDrop > 0){
		var ranDrop = random(3)+3;
		for(i = 0; i < array_length(gemValues); i++){
		    if(gemValues[i] <= valueToDrop){
		        valueOfGem = gemValues[i];
		        break;
		    }
		}
		with(instance_create_layer(x,y,"Player",oGem)){
		    value = valueOfGem;
			vsp=-3;
			hsp=ranDrop*_attack_from;
		}
		valueToDrop -= valueOfGem;
	}
}