class Block{
  float x;
  float y;
  float w;
  float h;
    Block(float xx, float yy, float ww, float hh){
      x = xx;
      y = yy;
      w = ww;
      h = hh;
    }
    void draw(){
      fill(1,1,255);
      rect(x,y,w,h);
    }
    void isHit(Player p){
      if(p.x + p.r >= x && p.x - p.r <= x + w && p.y + p.r >= y && p.y - p.r <= y + h){
        p.y = y - p.r;
        p.speedY = 0;
   //    println("Hiting");
      }
    }
    void moveBlock(float dx){
      x = x + dx;
    }
}
