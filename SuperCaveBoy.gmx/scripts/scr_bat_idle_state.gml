// scr_bat_idle_state()
image_index = spr_bat_idle;

///Look for the player
if(instance_exists (obj_player))
{
    var dis = point_distance(x,y, obj_player.x,obj_player.y);
    
    if(dis < sight)
    {
    state = scr_bat_chase_state;
    }
}
