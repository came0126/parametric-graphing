Equation e;
Plane plane;

// Setup the program
void setup() {
  size(1000,700);
  background(240);
  plane = new Plane();
  // Generates a new random parametric equation
  e = new Equation(color(204,153,0)) {
    public float getX(float t) {
      return t*sin(t);
    }
    
    public float getY(float t) {
      return t*cos(t);
    }
    
  };
  // Set orgin to be the center of the screen
  translate(width/2, height/2);
  
  //Draw the plane background to the screen
  plane.display();
  e.display();
}

// Draw iterations, not needed with this implementation
void draw() {} //<>//
