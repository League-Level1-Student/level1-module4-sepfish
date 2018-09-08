int birdX = 300;
int birdY = 300;
int birdYVelocity = 50;
int gravity = 2;
int pipeX = 600;
int upperPipeHeight = (int) random(100, 400);
int score = 0;

void setup(){
  size(600, 600);
}

void draw() {
  background(#50ECFF);
  fill(#2C8111);
  rect(0, 550, 600, 50);
  if (intersectsPipes() == false && birdY < 550) {
  fill(#FCEB63);
  stroke(#645E30);
  ellipse(birdX, birdY, 60, 50);
  birdY += gravity;
  teleportPipes();
  fill(#1F326A);
  text("Score: " + score, 25, 25);
  } else {
    fill(#1F326A);
    text("You lose :(", 250, 200);
    fill(#1F326A);
  text("Score: " + score, 25, 25);
  }
}

void mousePressed(){
  birdY -= birdYVelocity;
}

void teleportPipes(){
  fill(#73C658);
  rect(pipeX, 0, 100, upperPipeHeight);
  fill(#73C658);
  rect(pipeX, upperPipeHeight + 150, 100, 400);
  if (pipeX > 0) {
    pipeX -= 2;
  } else {
    upperPipeHeight = (int) random(100, 400);
    pipeX = 600;
    score++;
  }
}

boolean intersectsPipes() { 
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+100)){
          return true; }
     else if (birdY>upperPipeHeight + 150 && birdX > pipeX && birdX < (pipeX+100)) {
          return true; }
     else { return false; }
}