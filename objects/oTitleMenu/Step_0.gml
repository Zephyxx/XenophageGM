// Getting Player Input
AxisInput = gamepad_axis_value(0, gp_axislv);
AxisReset = true;

if (AxisInput != 0 && AxisReset)
{
	// Up
	if (AxisInput < 0 )
	{
		keyboard_key_press(vk_up);
		keyboard_key_release(vk_up);
		AxisReset = false;
	}
	else if (AxisInput > 0)
	{
		keyboard_key_press(vk_down);
		keyboard_key_release(vk_down);
		AxisReset = false;
	}
	else AxisReset = true;	
}

if (keyboard_check_pressed(vk_up))
{
	upKeyKB = true;
}
else if (keyboard_check_pressed(vk_down))
{
	downKeyKB = true; 
}
else
{
	upKeyKB = false;
	downKeyKB = false;
}

acceptKeyKB = keyboard_check_pressed (vk_space) || keyboard_check_pressed (vk_enter); 
/*AxisInput = gamepad_axis_value(0, gp_axislv);
AxisReset = true;
downKeyKB = false;
upKeyKB = false;
acceptKeyKB = false;
delay = 10;
delay_counter = 1;


// Move Through Menu Options 

//pos += downKeyKB - upKeyKB; // Position of Highlighted Menu Option 

//if pos >= op_length {pos = 0} ; // This code determines where the selection highlight is in the menu, and keeps it from moving off said menu.
//if pos < 0 {pos = op_length - 1}; 

/*if(delay_counter > delay)
{
	// Move Through Menu Options w/ Controller 
	switch(keyboard_key)
	{
		// Movement via KB; Doesn't allow up/down at the same time. Shouldn't* break.
		// Down
		case vk_down:
		case ord("S"):
			downKeyKB = true;
			upKeyKB = false;
		break;
		// Up
		case vk_up:
		case ord("W"):
			upKeyKB = true;
			downKeyKB = false;
		break;
		// Accept
		case vk_space:
		case vk_enter:
			acceptKeyKB = true
		break;
		default:
			downKeyKB = false;
			upKeyKB = false;
			acceptKeyKB = false;
	}
	delay_counter = 1;

	/*if (AxisReset)
	{
		if (AxisInput > 0)
		{
			downKeyKB = true;
			upKeyKB = false;
		}
		else if (AxisInput < 0)
		{
			upKeyKB = true;
			downKeyKB = false;
		}
		else
		{
			downKeyKB = false;
			upKeyKB = false;
			AxisReset = True
		}
	}

	/*switch(AxisInput != 0)
	{
		// Moving Up
		case AxisInput > 0:
			keyboard_key_press(vk_up);
			upKeyKB = true;
			AxisReset = false; 
			show_debug_message("Selector Should be Going Up!");
			keyboard_key_release(vk_up); 
		break;
		
		// Moving Down 
		case AxisInput < 0: 
			keyboard_key_press(vk_down);
			downKeyKB = true;
			AxisReset = false;
			show_debug_message("Selector Should be Going Down!");
			keyboard_key_release(vk_down);
		break; 
	
		// No Movement / Default
		default: 
			AxisReset = true;
			show_debug_message("Selector Should be Not Moving!");
		break; 
	}

}
else
{
	delay_counter += 1;
	show_debug_message(delay_counter)
}*/

// Move Through Menu Options -- With Controller!

pos += downKeyKB - upKeyKB; // Position of Highlighted Menu Option 

if pos >= op_length {pos = op_length - 1} ; // This code determines where the selection highlight is in the menu, and keeps it from moving off said menu.
if pos < 0 {pos = 0};




