/// @description README

/* Each button has to have this as a parent, even if it has no code. obj_menu_control uses
   this object to get all buttons (with obj_button {})
   Each button must have set the following attributes in the creation code:
       * name -> Button name
       * b_up -> Button (name) to select when up is pressed
       * b_down
       * b_left
       * b_right
   Each button must have an user defined event 7. This will be called when the button is
   pressed.
*/

/* */
/*  */
if !audio_is_playing(menuBackground)&&room_get_name(room)!="shovel_map_1"&&room_get_name(room)!="shovel_map_2S"
{
	audio_play_sound(menuBackground,1,true,global.music_value);
}
show_debug_message("################## GOOOOOGGLEEEE: {0}", GooglePlayServices_IsAuthenticated());
show_debug_message("################## TEST: {0}", GooglePlayServices_Player_CurrentID());