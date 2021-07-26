class Enemy{
  float x;
  float y;
  float r;
  float speedX;
  float speedY;
  
      Enemy(float xx, float yy, float rr){
        x = xx;
        y = yy;
        r = rr;
        speedX = 0;
        speedY = 0;
      }
      void draw(){
        fill(255,1,1);
        circle(x,y,r);
      }
      void update(){
//          speedY = speedY + gravity;
//          y = y + speedY;
//          x = x + speedX;
      }
      void moveEnemy(float dx){
        x = x + dx;
      }
}
