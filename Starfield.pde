class Particle 
{
  private double myX,myY,myAngle, mySpeed; 
  
  Particle() 
  { 
  myX= ((double)(Math.cos()*300)*60);
  myY= ((double)(Math.sin()*100)+60);
  }
  void setup(){
    size(500,500);
    background(0,0,0); 
    noStroke(); 
  }
  void show()
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX,myY,40,40);
  }
  void move() {
    myX=myX+mySpeed;
    if(myX>500)
    myX= -150;
  }
}

  
  Particle [] p = new Particle [100];
  
 private int myX,myY,myAngle, mySpeed;
  
  void setup(){
    size(500,500);
    noStroke(); 
    for (int i=0; i<10; i++)
    p[i] = new Particle();
    for (int i = 10; i<p.length; i++)
    p[i] = new Particle(); 
    
  }
    
    void draw() {
      
        fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
        ellipse(myX,myY,40,40);
        for(int i = 0; i <p.length; i++){
        {
          p[i].show(); 
          p[i].move();
    }
}

class OddballParticle extends Particle
{
  private int myX,myY,myAngle, mySpeed; 
  
  OddballParticle()
  {
  int x;
  int y; 
  myX= ((int)(Math.random()*100)+10);
  myY= ((int)(Math.random()*400)-60);
  }
  
  void move()
  {
    myX=myX+mySpeed;
    if(myX>500)
    myX= -300;
    
  }
  void show() 
 {
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      rect(myX,myY,40,40);
 }
}
  }
