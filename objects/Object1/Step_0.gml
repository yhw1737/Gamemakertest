if point_distance(x,y,xx,yy) > spd{
	x+=cos(degtorad(point_direction(x,y,xx,yy)))*spd
	y-=sin(degtorad(point_direction(x,y,xx,yy)))*spd
	if cos(degtorad(point_direction(x,y,xx,yy))) > 0{
		image_xscale = 1
	}
	if cos(degtorad(point_direction(x,y,xx,yy))) < 0{
		image_xscale = -1
	}
	image_speed = 1
}
else{
	image_speed = 0
	image_index = 0
}
if !instance_exists(Object3){
	show_message("You win")
	game_end()
}