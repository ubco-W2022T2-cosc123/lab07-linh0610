float x, y, r = 15;           // ball location and size
float speedX = 0, speedY = 0; // speed of ball
float xt, yt, rt = 19;        // target location and size
int score = 0;                // keep score

void setup() {
  size(400, 400);
  textSize(14);
  // ball initially at sketch center
  x = width / 2;
  y = height / 2;
  // target initially at random location within the sketch
  xt = random(rt, width - rt);
  yt = random(rt, height - rt);
}

void draw() {
  background(0);
  // draw score
  fill(255, 0, 0);
  text("Score: " + score, 5, 15);

  // draw ball
  noStroke();
  fill(255);
  ellipse(x, y, 2 * r, 2 * r);

  // draw target
  stroke(255, 180, 0);
  fill(255, 180, 0, 50);
  ellipse(xt, yt, 2 * rt, 2 * rt);

  // move ball
  x += speedX;
  y += speedY;

  // bounce ball off sketch edges
  if (x < r || x > width - r) {
    speedX = -speedX;
  }
  if (y < r || y > height - r) {
    speedY = -speedY;
  }

  // check if ball is completely inside target
  if (dist(x, y, xt, yt) < rt - r) {
    // increment score
    score++;
    // move target to a new random location
    xt = random(rt, width - rt);
    yt = random(rt, height - rt);
  }
}

void keyPressed() {
  // react to key presses
  if (keyCode == UP) {
    speedY = max(speedY - 1, -5);
  } else if (keyCode == DOWN) {
    speedY = min(speedY + 1, 5);
  } else if (keyCode == LEFT) {
    speedX = max(speedX - 1, -5);
  } else if (keyCode == RIGHT) {
    speedX = min(speedX + 1, 5);
  } else if (key == ' ') {
    // freeze ball and place it in the center of the sketch
    x = width / 2;
    y = height / 2;
    speedX = 0;
    speedY = 0;
  }
}
