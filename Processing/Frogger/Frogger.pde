int frogX = 200;
int frogY = 350;
Car car1 = new Car(100, 100, 70, 3);
Car car2 = new Car(20, 30, 80, 1);
Car car3 = new Car(50, 170, 95, 2);
Car car4 = new Car(146, 240, 55, 3);

void setup(){
  size(400, 400);
}

void draw() {
  background(#93E8FF);
  noStroke();
  fill(#4FAA63);
  ellipse(frogX, frogY, 50, 50);
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  car1.goLeft();
  car2.goLeft();
  car3.goRight();
  car4.goRight();
    if (frogX > 400) {
      frogX = 400;
    }
    if (frogX < 0) {
      frogX = 0;
    }
    if (frogY > 400) {
      frogY = 400;
    }
    if (frogY < 0) {
      frogY = 400;
    }
    
    if (intersects(car1) == true || intersects(car2) == true || intersects(car3) == true || intersects(car4) == true){
      frogX = 200;
      frogY = 350;
    }
}

void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
              frogY -= 20;
            }
            else if(keyCode == DOWN)
            {
              frogY += 20;
            }
            else if(keyCode == RIGHT)
            {
              frogX += 20;
            }
            else if(keyCode == LEFT)
            {
              frogX -= 20;
            }
      }
}

class Car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  
  Car(int carX, int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
  }
  
  void display() {
      fill(#12E005);
      rect(carX, carY, carSize, 50);
  }
  
  void goLeft() {
    carX -= carSpeed;
    if (this.carX < 0){
      this.carX = 400;
    }
  }
  void goRight() {
    carX += carSpeed;
    if (this.carX > 400){
      this.carX = 0;
    }
  }
  
  int getX(){
    return this.carX;
  }
  int getY(){
    return this.carY;
  }
  int getSize(){
    return this.carSize;
  }
}

boolean intersects(Car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}