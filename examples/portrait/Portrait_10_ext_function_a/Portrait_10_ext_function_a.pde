/* 
*  Portrait 03
*  Einfache Variablen
*  HKB 16 Parametric Design, MR
*/

int dicke=150;
int mitteX;
int mitteY;


// Setup Funktion, wird einmal aufgerufen
void setup(){ 
   size(500,500);
   mitteX=width/2;
   mitteY=height/2;  
}


// Draw Funktion, wird geloopt
void draw(){
  background(0);
  
  fill(255);
  
  arc(mitteX, mitteY, dicke*1.5, 150, -PI, 0, OPEN); // Schulter
  ellipse(mitteX,mitteY-100,100,100); // Kopf
  rect(mitteX-dicke/2,mitteY,dicke,150); // Bauch
  rect(mitteX-dicke/2-dicke/4 ,mitteY,dicke/4,150); // linker Arm
  rect(mitteX+dicke/2,mitteY,dicke/4,150); // rechter Arm
  
  
  // P I C K E L
  
  float pickelherdx=mitteX;
  float pickelherdy=mitteY-100;
  int numpickels=5;
  int pickelcolor=color(255,0,0);
  float pickelabstand=10;  
  
   for(int i=0;i<numpickels;i++){
      fill(pickelcolor);
      ellipse(pickelherdx+i*pickelabstand,pickelherdy,5,5);
   }
    
   
  
}
 