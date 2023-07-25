// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function changePlayerName(){
	if global.edited_name_str!=global.player_name{
		LootLockerSetPlayerName(global.edited_name_str);
	}
}