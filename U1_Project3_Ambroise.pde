int [] ellipseX = new int [10];
int [] ellipseY = new int [10];
boolean enter = false;
int x = 1;

void setup()
{
  for (int i = 0; i < 10; i++)
  {
    ellipseX [i] = (int) random (0, width - 50);
    ellipseY [i] = (int) random (0, height -50);
  }
  fullScreen();
  background(0);
  colorMode(HSB);
}

void draw()
{
  float x = random(width);
  float y = random(height);
  if (enter == false)
  {
    if (keyPressed)
      {
        if (key == ENTER && enter == false)
        {
          enter = true;
        }
        if (key == ENTER && enter == false)
        {
          enter = true;
        }
      }
    for (int i = 0; i < 10; i++)
    {
      fill(random(255), 255, 255, 100);
      ellipse(ellipseX[i], ellipseY[i], 20, 20);
      ellipseX[i] = ellipseX[i] + (int) random(-5, 5);
      ellipseY[i] = ellipseY[i] + (int) random(-5, 5);
      noStroke();

      if (x > width)
        x = -1;
      {
        if (mousePressed)
        {
          fill(0);
          ellipse(mouseX, mouseY, 40, 40);
        }
      }
    }
  }
}