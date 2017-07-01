/// Move_state()
var right = keyboard_check(vk_right);
var left =keyboard_check(vk_left);
var up =keyboard_check(vk_up);
var down =keyboard_check(vk_down);
var up_release = keyboard_check_released(vk_up);


if (!place_meeting(x,y+1,Solid))
{
vspd += player_gravity;

// Control Jump Height
if(up_release && vspd < player_jump)
    {
    vspd = player_jump;
    }
}
    else
    {
    vspd =0;
    
    // Jump code
    if(up)
    {
    vspd = jump_speed;
    }
    }
    


// Player Movement
if(right )
{
hspd = player_speed;
}

if(left)
{
hspd =- player_speed;
}

// Flip sprite to left / right
if(hspd !=0)
{
image_xscale = sign(hspd);
}

// Friction
if(!right && !left)
{
hspd = 0;
}


scr_move (Solid);

/// Check for ledge grab state
var falling = y-yprevious >0;
var wasnt_wall = !position_meeting(x+17* image_xscale,yprevious,Solid);
var is_wall = position_meeting (x+17*image_xscale,y,Solid);

if (falling && wasnt_wall && is_wall)
{
hspd = 0;
vspd = 0;

// Move against the ledge
while(!place_meeting(x+image_xscale,y,Solid))
{
x += image_xscale;
}

// Make sure we are the right height
while (position_meeting(x+17*image_xscale,y-1,Solid))
{
y -=1;
}

state = scr_ledge_grab_state;
}