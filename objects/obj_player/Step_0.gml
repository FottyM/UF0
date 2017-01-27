// Keyboard check 
if(keyboard_check(vk_right)) || keyboard_check(ord("D"))  {
	x = x + 8;
}
if(keyboard_check(vk_left))|| keyboard_check(ord("A")) x = x - 8;  
if(keyboard_check(vk_up)) || keyboard_check(ord("W"))y = y - 8; 
if(keyboard_check(vk_down)) || keyboard_check(ord("S")) y = y + 8; 

//Image positionning 
image_angle = point_direction(x,y,mouse_x,mouse_y);


//Create a bullet
if(mouse_check_button(mb_left)) && (cooldown < 1) {
	instance_create_layer(x, y,"BulletsLayer",obj_bullet);
	cooldown = 5;
}

cooldown -= 1;
