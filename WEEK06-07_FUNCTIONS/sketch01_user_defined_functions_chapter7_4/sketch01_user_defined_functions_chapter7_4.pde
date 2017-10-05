// Example 7-3: Bouncing ball with functions
// Declare all global variables (stays the same)
int x = 0;
int speed = 5;

// Setup does not change
void setup() {
  size(480, 270);
}
void draw() {
  background(255);
  // Instead of writing out all the code about the rectangle in draw(), I 
  // simply call three functions. How do I know the names of these 
  // functions? I made them up!
  move(); 
  bounce();
  display();
}
// Where should functions be placed?
// You can define your functions anywhere in the code outside of setup() and draw().
// However, the convention is to place your function definitions below draw().

// A function to display the rectangle
void display() {
  stroke(0);
  fill(0,0,255);
  rect(x, height/2, 30, 10);
}

// A function to move the rectangle
void move() { 
  // Change the x location by speed
  x = x + speed;
}

// A function to bounce the rectangle
void bounce() {
  // If we’ve reached an edge, reverse speed
  if ((x > width) || (x < 0)) {
    speed = speed * - 1;
  }
}