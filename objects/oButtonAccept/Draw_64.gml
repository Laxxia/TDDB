/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (flash > 0){
      gpu_set_fog(true,c_red,0,1000)
      draw_self()
      gpu_set_fog(false,c_red,0,1000)
}else{
      draw_self()
}