class Player{
  float x;
  float y;
  float r;
  float speedX;
  float speedY;
  
      Player(float xx, float yy, float rr){
        x = xx;
        y = yy;
        r = rr;
        speedX = 0;
        speedY = 0;
      }
      void draw(){
        fill(1,255,1);
        circle(x,y,r);
      }
      void update(){
          speedY = speedY + gravity;
          y = y + speedY;
          x = x + speedX;
          
          checkWalls();
      }
      void checkWalls(){
        if (y >= height - r){
          speedY = 0;
          y = height - r;
        }
        if (y <= 0 + r){
          y = height - r;
        }
        if (x >= width - r){
          speedX = 0;
        }
        if (x <= 0 + r){
          speedX = 0;
        }
        if (x >= width - 100){
          e.moveEnemy(-5);
          b.moveBlock(-5);
        }
         if (x < 100){
          e.moveEnemy(5);
          b.moveBlock(5);
        }
      }
      void jump(){
          speedY = -10;
      }
      void moveLeft(){
        speedX = -5;
      }
      void moveRight(){
        speedX = 5;
      }
}
