float gravity = 0.5;
Player p = new Player(300,100,25);
Enemy e = new Enemy(500,300,70);
Block b = new Block(200,200,200,30);
void setup(){
  size(1000,600);
  ellipseMode(RADIUS);
}
void draw(){
  background(255,255,255);
  p.update();
  e.update();
  b.isHit(p);
  
  p.draw();
  println(p.speedY);
  e.draw();
  b.draw();
}
void keyPressed(){
  if(key == 'd'){
    p.moveRight();
  }
  if(key == 'a'){
    p.moveLeft();
  }
  if(key == ' '){
    p.jump();
  }
}
