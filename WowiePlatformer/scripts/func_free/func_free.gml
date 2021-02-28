function func_free() {

	if nextX > x
	{
		while(!place_free(nextX, y))
		{
			nextX--
			lastX = nextX
		}
	}
	else
	{
			while(!place_free(nextX, y))
		{
			nextX++
			lastX = nextX
		}
	}

	if nextY > y
	{
		while(!place_free(x, nextY))
		{
			nextY--
			lastY = nextY
		}
	}
	else
	{
			while(!place_free(x, nextY))
		{
			nextY++
			lastY = nextY
		}
	}




}
