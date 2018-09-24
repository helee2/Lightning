float coordx = (float)(Math.random() * 400) + 50;
float coordy = 0;
float cirx = (float)(Math.random() * 480) + 10;
float ciry = 480;

void setup()
{
  size(500,500);
  background(0);
  textSize(30);
  textAlign(CENTER);
  noLoop();
}

void draw()
{
  lightning();
  target();
}
void lightning()
{
  stroke(255,255,0);
  float coordx2 = coordx + (float)(Math.random() * 30) - 15;
  float coordy2 = coordy + (float)(Math.random() * 15) + 5;
  line(coordx,coordy,coordx2,coordy2);
  coordx = coordx2;
  coordy = coordy2;
}
void target()
{
  stroke(255,255,255);
  ellipse(cirx,ciry,20,20);
  if (coordy > 490)
  {
    if (((cirx - coordx) * (cirx - coordx) + (ciry - coordy) * (ciry - coordy)) <= 20)
    {
      background(0);
      text("You Win!",250,250);
    }
    else
    {
      stroke(255,255,255);
      background(0);
      text("Try Again!",250,250);
    }
  }
}
void mousePressed()
{
  redraw();
}