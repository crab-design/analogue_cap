// Pi
//translate([0,0,1.6])
//color([0.2,1,0,1])
//roundedRect([65, 30, 1.6], 5, $fn=12);

// Case

color([1,1,1,1])
difference(){
roundedRect([67, 32, 20], 6, $fn=12);
translate([0,0,1.6])roundedRect([65, 30, 20], 5, $fn=12);

rotate([90,0,0])
translate([0,4,10])
{
translate([20,0,0])roundedRect([15,2,10], 1, $fn=12);
translate([-15,0,0])roundedRect([10,2,10], 1, $fn=12);
}




}











module roundedRect(size, radius)
{
	x = size[0];
	y = size[1];
	z = size[2];

	linear_extrude(height=z)
	hull()
	{
		// place 4 circles in the corners, with the given radius
		translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
		circle(r=radius);
	
		translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
		circle(r=radius);
	
		translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
		circle(r=radius);
	
		translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
		circle(r=radius);
	}
}