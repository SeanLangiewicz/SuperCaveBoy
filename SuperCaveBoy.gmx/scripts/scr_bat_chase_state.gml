/// Scr_bat_chace_state

if(instance_exists(obj_player))
{
var dir = point_direction(x,y,obj_player.x,obj_player.y);
hspd = lengthdir_x(spd,dir);
vspd = lengthdir_y(spd,dir);

// Change to flying sprite
sprite_index = spr_bat_fly;

// face right direction
if(hspd !=0) 
{
image_xscale = sign(hspd);
}

// Move
scr_move(Solid);
}
