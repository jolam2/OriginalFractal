public void setup()
{ 
  size(500,500); 
  rectMode(CENTER); 
}

public void draw()
{
  background(0);
  myFractal(0,500, 60, 30, 70);
}

public void myFractal(float x, float y,  int colors1, int colors2, int colors3)
{
  stroke(255);
  triangle(x,y,y,x,y,y);
  if(y > 30)
  {
    fill(colors1,colors2,colors3);
    myFractal(x+x/8, y-y/8, colors1+20, colors2+50, colors3+70);
    fill(colors1,colors2,colors3);
    myFractal(x-x/8, y-y/8, colors1+40, colors2-70, colors3+100);
    fill(colors1,colors2,colors3);
  }
}
