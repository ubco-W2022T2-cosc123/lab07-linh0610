void setup() {
  size(700, 300);
  colorMode(HSB, width, 100, 100);
}

void draw() {
  int x = 0;
  while (x < width) {
    stroke(x, 100, 100);
    line(x, 0, x, height);
    x++;
  }
}
