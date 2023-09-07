float circleRad = 50;

float[] circleColor = new float[3];

void setup() 
{
  fullScreen();
  background(0);
};

void draw()
{
  background(0);
  
  fill(circleColor[0], circleColor[1], circleColor[2]);
  stroke(circleColor[0], circleColor[1], circleColor[2]);
  circle(mouseX, mouseY, circleRad);
};

void mouseClicked()
{
  circleColor[0] = random(0, 255);
  circleColor[1] = random(0, 255);
  circleColor[2] = random(0, 255);
};
