class Bouncer{
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector force;
  float mass;
  Bouncer(PVector pos , float mass){
    this.position = pos;
    this.mass = mass;
    this.force = new PVector(2 , 0);
    this.velocity = new PVector(0 , 0);
  }
  
  void show(){
    fill(255 , 100);
    noStroke();
    ellipse(this.position.x , this.position.y , this.mass * 20 , this.mass * 20);
  }
  
  void update(){
    this.acceleration = PVector.div(this.force , this.mass);
    
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    this.force.mult(0);
  }
  
  void applyForce(PVector f){
    this.force.add(f);
  }
  
  void bounce(){
    if(this.position.x > width){
      this.position.x = width;
      this.velocity.x = -this.velocity.x;
    }
    
    if(this.position.x < 0){
      this.position.x = 0;
      this.velocity.x = -this.velocity.x;
    }
    
    if(this.position.y > height){
      this.position.y = height;
      this.velocity.y = -this.velocity.y;
    }
    
    if(this.position.y < 0){
      this.position.y = 0;
      this.velocity.y = -this.velocity.y;
    }
  }
}
