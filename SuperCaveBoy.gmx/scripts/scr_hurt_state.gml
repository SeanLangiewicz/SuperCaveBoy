//hurt state
// Set the sprite
sprite_index = spr_player_hurt;

if(hspd !=0)
{
image_xscale = sign(hspd);
}

// Apply Gravity
if(!place_meeting(x,y+1,Solid))
{
vspd += player_gravity;
}
else
{
vspd =0;

// Use Friection
scr_apply_friction(acc);
}
scr_move_bounce_direction(Solid);

//change back to the move state
if(hspd ==0 && vspd ==0)
{
image_blend =c_white;
state = scr_move_state;
}
