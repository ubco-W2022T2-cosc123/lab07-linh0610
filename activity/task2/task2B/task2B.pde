void setup() {
  size(700, 300);
  colorMode(HSB, width, 100, 100);
}

void draw() {
  // Draw background gradient
  for (int x = 0; x < width; x++) {
    stroke(x, 100, 100);
    line(x, 0, x, height);
  }
}
