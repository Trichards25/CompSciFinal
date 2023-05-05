hInput = (keyboard_check(ord("D")) + keyboard_check(vk_right)) - (keyboard_check(ord("A")) + keyboard_check(vk_left));
vInput = (keyboard_check(ord("S")) + keyboard_check(vk_down)) - (keyboard_check(ord("W")) + keyboard_check(vk_up));

if(hInput != 0 or vInput != 0){
dir = point_direction(0,0,hInput,vInput);

moveX = lengthdir_x(moveSpd, dir);
moveY = lengthdir_y(moveSpd, dir);

x += moveX;
y += moveY;
}