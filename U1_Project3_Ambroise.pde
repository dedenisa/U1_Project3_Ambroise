int [] ellipseX = new int [50];
int [] ellipseY = new int [50];
boolean enter = false;
boolean restart = false;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song;
AudioPlayer input;

void setup()
{
  minim = new Minim(this);
  song = minim.loadFile("Sad Song Piano.mp3");
  song.loop();
  for (int i = 0; i < 50; i++)
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
  keyPressed();
  float x = random(width);
  float y = random(height);
  if (enter == false)
    if (restart == false)
    {
      for (int i = 0; i < 50; i++)
      {
        fill(random(255), 255, 255, 255 );
        ellipse(ellipseX[i], ellipseY[i], 1, 1);
        ellipseX[i] = ellipseX[i] + (int) random(-3, 3);
        ellipseY[i] = ellipseY[i] + (int) random(-3, 3);
        noStroke();
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
void keyPressed()
{ 
  if (key == DOWN)
  {
  } else if (key == DOWN && restart == true)
  {
    restart = false;
  }
  if (key == ENTER)
  {
  } else if (key == ENTER && enter == true)
  {
    enter = false;
  }
}