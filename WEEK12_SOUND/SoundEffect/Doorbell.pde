// A Class to describe a "doorbell" (it's really a button)
class Doorbell {
  // Location and size
  float x;
  float y;
  float r;

  // Create the doorbell
  Doorbell(float x_, float y_, float r_) {
    x = x_;
    y = y_;
    r = r_;
  }

// Is a point inside the doorbell? (used for mouse rollover, etc.)
  boolean contains(float mx, float my) {
    if (dist(mx, my, x, y) < r) {
      return true;
    } else {
      return false;
    }
  }

  // Show the doorbell
  void display(float mx, float my) {
    if (contains(mx, my)) {
      fill(100);
    } else {
      fill(175);
    }
    stroke(0);
    strokeWeight(4);
    ellipse(x, y, r, r);
  }
}