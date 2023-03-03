//A
void setup() {
  size(400, 400);
  background(255);
  noStroke();
  
  int numSteps = 100; 
  color fromColor = color(0, 0, 255); 
  color toColor = color(0); 
  
  int i = 0;
  while (i < width) {
    int j = 0;
    while (j < height) {
      float distance = dist(i, j, width/2, height/2); 
      float percent = distance / (sqrt(sq(width/2) + sq(height/2))); 
      

      color lerpedColor = lerpColor(fromColor, toColor, percent);
      
      fill(lerpedColor);
      rect(i, j, 1, 1); 
      
      j++;
    }
    
    i++;
  }
}
