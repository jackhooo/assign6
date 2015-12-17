// Boss image is "img/enemy2.png" 
class Boss extends Enemy {

  int speed = 2;
  int hittime = 0;
  int bullethittime = 0;
  int bullethitmaxtime = 5;
  PImage bossImg;

  Boss(int x, int y, int type) {
    super(x, y, type);
    bossImg = loadImage("img/enemy2.png");
  }

  void draw()
  {
    image(bossImg, x, y);
  }
  void move(){
    this.x+=2;
  }
  boolean bullethit()
  { 
    bullethittime++;
    if (bullethittime == bullethitmaxtime)
    {
      bullethittime=0;
      return true;
    }
    return false;
  }

  int damage()
  {return -50;}
}
