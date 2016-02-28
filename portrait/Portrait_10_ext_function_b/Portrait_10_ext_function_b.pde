/* 
*  Portrait 03
*  Einfache Variablen
*  HKB 16 Parametric Design, MR
*/

int dicke=100;
int mitteX;
int mitteY;
int anzahlHaare=100;

// Setup Funktion, wird einmal aufgerufen
void setup(){ 
   size(500,500);
   mitteX=width/2;
   mitteY=height/2;  
    
}


// Draw Funktion, wird geloopt
void draw(){

  background(0);
  stroke(0);
  arc(mitteX, 250, dicke*1.5, 150, -PI, 0, OPEN);
  
  drawHair(mitteX , mitteY-100, -180,0);
  
  ellipse(mitteX,mitteY-100,100,100);
  rect(mitteX-dicke/2,mitteY,dicke,150);
  rect(mitteX-dicke*3/4,mitteY,dicke/4,150);
  rect(mitteX+dicke/2,mitteY,dicke/4,150);
 
}


void mouseMoved(){
  anzahlHaare=mouseX;
}


void drawHair(int xpos, int ypos, float startangle, float endangle){
  pushStyle();
  pushMatrix();
   stroke(255);
   strokeWeight(2);
  translate(xpos,ypos);
  
  rotate(radians(startangle));
  
  float angle=(startangle-endangle)/float(anzahlHaare-1);
  rotate(radians(-180));  
  for(int i=0;i<anzahlHaare;i++){ 
    line(0, 0,100,0);
    rotate(radians(angle));
  }
  popMatrix();
  popStyle();
}