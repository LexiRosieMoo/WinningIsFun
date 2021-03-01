/// @description Insert description here
// You can write your code in this editor


active = true	
onGround = !place_free(x, y+1)
onWall = !place_free(x+1, y) or !place_free(x-1, y)

func_controls();

if active
{
	
	
	moving = false
	///Physics
	func_applyForce(0, grav*weight)

	if cont_left
	{
		moving = true
		if onGround
		{
			func_applyForce(-1*spd, 0)
		}
		else
		{
			func_applyForce(-0.5*spd, 0)
		}
		obj_animator.image_xscale = -1
		
	}
	if cont_right
	{
		moving = true
		if onGround
		{
			func_applyForce(spd, 0)	
		}
		else
		{
			func_applyForce(0.5*spd, 0)		
		}
		obj_animator.image_xscale = 1
	}
	if cont_jump
	{
		if onGround or onWall
		{
			obj_animator.sprite_index = obj_animator.jumpStart
			func_applyForce(0, -1*jump)
			if onWall and not onGround
			{
				
				if !place_free(x+1, y)
				{
					func_applyForce(-1*jump, 0)	
				}
				else
				{
					func_applyForce(jump, 0)		
				}
			}
		}
	}
	//Momentum
	velX = x - lastX
	velY = y - lastY

	if cont_left and velX > 0
	{
		velX = velX * 0.8	
	}


	if cont_right and velX < 0
	{
		velX = velX * 0.8	
	}

	//Padding
	
	if onGround and not moving
	{
		velX *= 0.5	
	}
	else
	{
		velX *= 0.99
	}
	velY *= 0.99
	/*
	if velX > terminal
	{
		velX = terminal	
	}
	if velX < terminal*-1
	{
		velX = terminal*-1	
	}
	if velY > terminal
	{
		velY = terminal
	}
	if velY < terminal*-1
	{
		velY = terminal * -1	
	}
*/
	//Movement
	nextX = x + clamp(velX + 0.5 * accX, -1*terminal, terminal)
	nextY = y + clamp(velY + 0.5 * accY, -5*terminal, terminal)


	lastX = x
	lastY = y

	func_free()

	x = nextX
	y = nextY



	/*collideWall = instance_place(x, y, obj_Wall)
	
	while place_meeting(x, y, collideWall)
	{
		x += cos(degtorad(collideWall.directionPush))
		y += sin(degtorad(collideWall.directionPush))
		
		lastX = x
		lastY = y
	}*/


	accX = 0
	accY = 0
	//show_debug_message(velX)
	
	if moving and onGround
	{
		obj_animator.sprite_index = obj_animator.run	
	}
	else if not onGround and onWall and !place_free(x+2, y) and cont_right
	{
		obj_animator.sprite_index = spr_wallGrab
	}
	else if not onGround and onWall and !place_free(x-2, y) and cont_left
	{
		obj_animator.sprite_index = spr_wallGrab
	}
	else if (not onGround and velY > 0)
	{
		obj_animator.sprite_index = spr_fall
	}
	else if not onGround and velY < 0
	{
		obj_animator.sprite_index = spr_jumpStart
	}
	else if (obj_animator.sprite_index != spr_jumpStart) and obj_animator.sprite_index != spr_idleYawn and obj_animator.sprite_index != spr_idleBlink
	{
		obj_animator.sprite_index = obj_animator.idle	
	}
}