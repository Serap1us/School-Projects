shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Animate the background using TIME
	float red = abs(sin(TIME));
	
	// Set color to red component
	COLOR = vec4(red, 0.0, 0.0, 1.0f);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
