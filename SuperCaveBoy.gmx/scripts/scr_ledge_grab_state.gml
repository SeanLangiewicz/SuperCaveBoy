/// Ledge Grab State
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

if (down)
{
state = scr_move_state;
}
if (up)
{
state = scr_move_state;
vspd = jump_speed;
}
