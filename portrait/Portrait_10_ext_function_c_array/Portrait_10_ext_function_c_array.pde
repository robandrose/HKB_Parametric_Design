/* 
 *  Portrait 03
 *  Einfache Variablen
 *  HKB 16 Parametric Design, MR
 */

int dicke=150;
int mitteX;
int mitteY;

int maxpickels=10;
float [] pickelposx=new float[maxpickels];
float [] pickelposy=new float[maxpickels];

// Setup Funktion, wird einmal aufgerufen
void setup() { 
  size(500, 500);
  mitteX=width/2;
  mitteY=height/2;  

  for (int i=0; i<maxpickels; i++) {
    pickelposx[i]=random(-10, 10);
    pickelposy[i]=random(-10, 10);
  }
}


// Draw Funktion, wird geloopt
void draw() {
  background(0);

  fill(255);
  arc(mitteX, mitteY, dicke*1.5, 150, -PI, 0, OPEN); // Schulter
  ellipse(mitteX, mitteY-100, 100, 100); // Kopf
  rect(mitteX-dicke/2, mitteY, dicke, 150); // Bauch
  rect(mitteX-dicke/2-dicke/4, mitteY, dicke/4, 150); // linker Arm
  rect(mitteX+dicke/2, mitteY, dicke/4, 150); // rechter Arm

  // P I C K E L
  drawPickels(mitteX, mitteY-100, 5, color(255, 0, 0), 10);
  drawPickels(mitteX-10, mitteY-120, 3, color(150, 40, 0), 10);
  drawPickels(mitteX+20, mitteY-100, 8, color(255, 200, 0), 10);
  drawPickels(mitteX-20, mitteY-70, 10, color(200, 50, 30), 10);
}


void drawPickels(float pickelherdx, float pickelherdy, int numpickels, int pickelcolor, float pickelabstand) {
  pushStyle();
  pushMatrix();
  translate(pickelherdx, pickelherdy);
  noStroke();
  fill(pickelcolor);
  for (int i=0; i<numpickels; i++) {
    ellipse(pickelposx[i], pickelposy[i], 5, 5);
  }   
  popMatrix();
  popStyle();
}