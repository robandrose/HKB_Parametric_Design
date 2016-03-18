import processing.pdf.*;


/* 
 *  Text 03
 *  Text einlesen, in Farbe übersetzen etc. 
 *  HKB 16 Parametric Design, MR
 */

String[] lines;
PFont [] fonts;
String [] fontlist;

String mytext="";

boolean saveframe=false;

void setup() {
  size(800,800);
  lines = loadStrings("text.txt");
  mytext=join(lines,'\n');
  fontlist=PFont.list();
  fonts=new PFont[fontlist.length];
  for(int i=0;i<fontlist.length;i++){
    fonts[i]=createFont(fontlist[i],20);
    println(fontlist[i]);
   }
}

void draw() {
  background(255);
  fill(0);
  
  float posx=0;
  float posy=30;
  
  for(int i=0;i<mytext.length();i++){
    char c= mytext.charAt(i);
    int fontindex=i%fonts.length;
    textFont(fonts[fontindex],20);
    text(c,posx,posy);
    posx+=textWidth('c');
    if(posx>=width-20 || c=='\n'){
      posx=0;
      posy+=25;
    } 
  }
}


void keyPressed(){
  if(key=='r'){
    
    
  }
}