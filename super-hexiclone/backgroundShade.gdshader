shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Animate the background using TIME
	float red = abs(sin(TIME * 0.5)); //0.5 makes it slow down to .5x speed
	
	// Use green and blue overtime as well for other shades of red
	float green = 0.1 + 0.1 * sin(TIME * 1.5);
	float blue = 0.05 + 0.05 * cos(TIME * 2.0);
	
	// Set color to red component
	COLOR = vec4(red, green, blue, 1.0f);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
