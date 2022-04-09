Bouncer[] bouncers;

void setup(){
  size(640 , 360);
  bouncers = new Bouncer[5];
  for(int i = 0; i < 5; i++){
    bouncers[i] = new Bouncer(new PVector(int(random(0 , width)) , height / 2) , random(0.5 , 2));
  }
}

void draw(){
  background(0);
  for(Bouncer b : bouncers){
    b.applyForce(new PVector(0 , 0.03).mult(b.mass));
    b.update();
    b.bounce();
    b.show();
  }
}
