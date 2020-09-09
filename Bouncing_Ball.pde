
float frame = 450;
float ballX = 250,  ballY = 250;
int ballSize = 20;
float shrinkFactor = 0.999;
float speedX = 1,  speedY = 2;

void setup () {

size (500, 500); 
  background (0);
frameRate (120);
}

void draw () {
 
//Shrinking frame
  frame = frame * shrinkFactor;
  
   if (frame <= 80)
   frame = 80;
  
//ball bounce 

  ballX = ballX + speedX; ballY = ballY + speedY; 

/*
if (ballX > width+frame/2)
    speedX= -speedX; 
    
if (ballY > width+frame/2)
   speedY = -speedY;
    
if (ballX < width+frame/2)
     ballX = width + speedX;

if (ballY > width+frame/2)
    ballY = width + speedY;
*/

if (ballY >= 475)
   speedY = -speedY;
    
if (ballX >= 475)
   speedX = -speedX;  
    
if (ballY <= 25)
   speedY = -speedY;
    
if (ballX <= 25)
   speedX = -speedX;  
  
  clear ();
  
  // Rammen
  noFill ();
  stroke (204, 80, 18);
  strokeWeight (1);
  rectMode (CENTER);
  rect (250, 250, frame, frame);
  
fill (255);
ellipseMode (CENTER);
ellipse (ballX, ballY, ballSize, ballSize);
}
