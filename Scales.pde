public void setup(){
 size(700,700);
 noLoop(); //stops the draw() function from repeating
}
float xScalar = 0.2;
float yScalar = 0.3;
float r = 30;
float b = 40;
float g = 80;


void draw(){
  boolean offset = true;
  int offsetVal = 0;
  for(int j = 750 + (int)(Math.random()*15); j >= 0; j-= 50)
  {
    if(offset == true){
      offsetVal = 25;
      offset = false;
    }
    else{
      offsetVal = 0;
      offset = true;
    }
    for(int i = -50 + offsetVal + (int)(Math.random()*6); i <= 750; i += 50)
    {

      scale(i, j);
   
    }
   }

}

void scale(int x, int y){
  b += 0.2 ;
  b *= 1.00225;
  g += 0.02;
  g *= 1.0005;

  fill(r, g, b);
  beginShape();
  curveVertex(0*xScalar + x, -300*yScalar + y);
  curveVertex(0*xScalar + x, -300*yScalar + y);
  curveVertex(100*xScalar + x, -280*yScalar + y);
  curveVertex(130*xScalar + x, -170*yScalar + y);
  curveVertex(110*xScalar + x, -100*yScalar + y);
  curveVertex(70*xScalar + x, -50*yScalar + y);
  curveVertex(0*xScalar + x, 0*yScalar + y);
  curveVertex(-70*xScalar + x, -50*yScalar + y);
  curveVertex(-110*xScalar + x, -100*yScalar + y);
  curveVertex(-130*xScalar + x, -170*yScalar + y);
  curveVertex(-100*xScalar + x, -280*yScalar + y);
  curveVertex(0*xScalar + x, -300*yScalar + y);
  curveVertex(0*xScalar + x, -300*yScalar + y);
  endShape();
}
