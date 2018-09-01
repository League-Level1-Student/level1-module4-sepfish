int birdX = 300;
int birdY = 0;
int birdYVelocity = 30;
int gravity = 1;

void setup(){
  size(600, 600);
}

void draw() {
  background(#50ECFF);
  fill(#FCEB63);
  stroke(#645E30);
  ellipse(birdX, birdY, 60, 50);
  birdY += gravity;
  gravity++;
}