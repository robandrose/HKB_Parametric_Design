
import processing.serial.*;

int lf = 10;    // Linefeed in ASCII
String myString = " ";
Serial myPort;  // The serial port





void setup() {
  size(500,500);
  
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.clear();
  // Throw out the first reading, in case we started reading 
  // in the middle of a string from the sender.
  myString = myPort.readStringUntil(lf);
  myString = "";
}




void draw() {
  
  if(myString.equals("12 DA 9D 87")){
    background(255,0,9);  
  }
  
  if(myString.equals("F2 0A C4 96")){
    background(0,255,0);
  }

  
  
  
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {
      myString=trim(myString);
      println(myString);
    }
  }
}