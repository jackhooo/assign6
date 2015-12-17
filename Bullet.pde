class Bullet {
  int x = 0;
  int y = 0;
  PImage bulletImg;
  Bullet(int x, int y) {
    this.x = x;
    this.y = y;
    bulletImg = loadImage("img/shoot.png");
  }

  void draw()
  {
    image(bulletImg, x, y+10);
  }

  void move()
  {
    x-=5;
  }
  
  boolean isCollideWithEnemy(int enemyX , int enemyY ,int enemyImgwidth , int enemyImgheight)
  {
    if(isHit( enemyX , enemyY , enemyImgwidth, enemyImgheight, x, y, bulletImg.width, bulletImg.height))
    {return true;}
    return false;
  }

  boolean isOutOfBorder()
  {
    if (x<0)
    {
      return true;
    }
    return false;
  }
}

void addBullet()
{
  for (int i = 0; i < bulletCount; i++) {
    if (bullets[i] == null)
    {
      bullets[i] = new Bullet(fighter.x, fighter.y);
      break;
    }
  }
}
