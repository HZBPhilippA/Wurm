float circleRad = 0;

float minCircleRad = 0;
float maxCircleRad = 500;

String direction = "up";

boolean execSizeChange = false;

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
  
  if (execSizeChange)
  {
    if (direction == "up") 
    {
      if (circleRad < maxCircleRad) 
      {
        circleRad += 5;
      };
      if (circleRad == maxCircleRad) 
      {
        direction = "down";
      };
    } else if (direction == "down")
    {
      if (circleRad > minCircleRad) 
      {
        circleRad -= 5;
      };
      if (circleRad == minCircleRad) 
      {
        direction = "up";
      };
    };
  };
};

void mouseClicked()
{
  loop();
  
  circleColor[0] = random(0, 255);
  circleColor[1] = random(0, 255);
  circleColor[2] = random(0, 255);
  
  execSizeChange = true;
};

void keyPressed()
{
  noLoop();
  
  circleRad = 0;
  direction = "up";
  
  background(0);
};
