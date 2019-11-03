  //typewriter effect learned from https://forum.processing.org/two/discussion/1823/typewrite-effect-typing-one-by-one-with-delay-on-the-strings

import processing.serial.*;
Serial myPort;
PFont mono;

int pressure;

int[] counter = new int[21];

int line = 36;

long previousMillis;

int pageNumber = 1;

void setup() {
  fullScreen();
//size(1000,800);
  frameRate(7);
  mono = createFont("OCRAStd.otf", 28);
  textFont(mono);


  printArray(Serial.list());
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');

}

void draw() {

  background(0);
  fill(255);
  
  if(pressure < 300){
    message1();
  }
  if(pressure > 300 & pageNumber==2){
    message2();
  }
  if(pressure > 300 & pageNumber==3){
    message3();
  }
  if(pressure > 300 & pageNumber==4){
    message4();
  }
  if(pressure > 300 & pageNumber==5){
    message5();
  }  
  if(pressure > 300 & pageNumber==6){
    message6();
  }  
  if(pressure > 300 & pageNumber==7){
    message7();
  }
  if(pressure > 500 & pageNumber==8){
    message8();
  }
  if(pressure > 300 & pageNumber==9){
    message9();
    
    
  }
}

void message1(){
  
  String text1 = "Hold my hand.";
  float x = width/2 - textWidth(text1)/2;
  float y = height/2;
  
  if (counter[1] < text1.length()){
    counter[1]++;
    text(text1.substring(0, counter[1]), x, y);
  } else {
    pageNumber=2;
    text(text1, x, y);
  }
}

void message2(){
  
  String text2 = "It's all gonna be okay.";
  float x = width/2 - textWidth(text2)/2;
  float y = height/2;

  if (pageNumber == 2){
    if (counter[2] < text2.length()){
      if (pageNumber == 2){
      counter[2]++;
      text(text2.substring(0, counter[2]), x, y);
      }
    } else {
      previousMillis = millis();
      while (millis() - previousMillis <= 3000) {}
      text(text2, x, y);
      pageNumber = 3;
    }
  }
}

void message3(){
  
  String text3a = "Take a deep breath";
  String text3b = ".........";
  String text3c = "And let it out.";
  float x1 = width/2 - textWidth(text3a)/2;
  float y1 = height/3;
  float x2 = width/2 - textWidth(text3b)/2;
  float y2 = height/3 + line * 5;
  float x3 = width/2 - textWidth(text3c)/2;
  float y3 = height/3 + line * 10;
 
  if (counter[3] < text3a.length()){
    counter[3]++;
    text(text3a.substring(0, counter[3]), x1, y1);
  } else {
    text(text3a, x1, y1);
    if (counter[4] < text3b.length()){
      previousMillis = millis();
      while (millis() - previousMillis <= 500) {}
      counter[4]++;
      text(text3b.substring(0, counter[4]), x2, y2);
    } else {
      text(text3b, x2, y2);
      if (counter[5] < text3c.length()){
        counter[5]++;
        text(text3c.substring(0, counter[5]), x3, y3);
      } else {
        pageNumber = 4;
        previousMillis = millis();
        while (millis() - previousMillis <= 3000) {}
        text(text3c, x3, y3);
      }    
    }  
  }
  
}

void message4(){
  
  String text4 = "Again,";
  float x = width/2 - textWidth(text4)/2;
  float y = height/2;
  
  if (counter[6] < text4.length()){
    counter[6]++;
    text(text4.substring(0, counter[6]), x, y);
  } else {
    pageNumber=5;
    previousMillis = millis();
    while (millis() - previousMillis <= 1500) {}
    text(text4, x, y);
  }
}

void message5(){
  
  String text5a = "Take a deep breath";
  String text5b = ".........";
  String text5c = "And let it out.";
  float x1 = width/2 - textWidth(text5a)/2;
  float y1 = height/3;
  float x2 = width/2 - textWidth(text5b)/2;
  float y2 = height/3 + line * 5;
  float x3 = width/2 - textWidth(text5c)/2;
  float y3 = height/3 + line * 10;
  
  if (counter[7] < text5a.length()){
    counter[7]++;
    text(text5a.substring(0, counter[7]), x1, y1);
  } else {
    text(text5a, x1, y1);
    if (counter[8] < text5b.length()){
      previousMillis = millis();
      while (millis() - previousMillis <= 500) {}
      counter[8]++;
      text(text5b.substring(0, counter[8]), x2, y2);
    } else {
      text(text5b, x2, y2);
      if (counter[9] < text5c.length()){
        counter[9]++;
        text(text5c.substring(0, counter[9]), x3, y3);
      } else {
        pageNumber = 6;
        previousMillis = millis();
        while (millis() - previousMillis <= 3000) {}
        text(text5c, x3, y3);
      }    
    }  
  }
  
}

void message6(){
  
  String text6a = "You've gone through this before.";
  String text6b = "And you're gonna get through it again.";
  String text6c = "Just stay with me, okay?";
  float x1 = width/2 - textWidth(text6a)/2;
  float y1 = height/2;
  float x2 = width/2 - textWidth(text6b)/2;
  float y2 = height/2 + line * 2;
  float x3 = width/2 - textWidth(text6c)/2;
  float y3 = height/2 + line * 5;
 
  if (counter[10] < text6a.length()){
    counter[10]++;
    text(text6a.substring(0, counter[10]), x1, y1);
  } else {
    text(text6a, x1, y1);
    if (counter[11] < text6b.length()){
      counter[11]++;
      text(text6b.substring(0, counter[11]), x2, y2);
    } else {
      text(text6b, x2, y2);
      if (counter[12] < text6c.length()){
        counter[12]++;
        text(text6c.substring(0, counter[12]), x3, y3);
      } else {
        pageNumber = 7;
        previousMillis = millis();
        while (millis() - previousMillis <= 3000) {}
        text(text6c, x3, y3);
      }    
    }  
  }
  
}

void message7(){
  
  String text7 = "Squeeze my hand tighter.";
  float x = width/2 - textWidth(text7)/2;
  float y = height/2;
  
  if (counter[13] < text7.length()){
    counter[13]++;
    text(text7.substring(0, counter[13]), x, y);
  } else {
    pageNumber=8;
    previousMillis = millis();
    while (millis() - previousMillis <= 3000) {}
    text(text7, x, y);
  }
}

void message8(){
  
  String text8a = "I might be just a text on your screen,";
  String text8b = "with a hand made of wires,";
  String text8c = "but I'm here to stay with you...";
  String text8d = "Until you feel better.";
  float x1 = width/2 - textWidth(text8a)/2;
  float y1 = height/3;
  float x2 = width/2 - textWidth(text8b)/2;
  float y2 = height/3 + line * 2;
  float x3 = width/2 - textWidth(text8c)/2;
  float y3 = height/3 + line * 6;
  float x4 = width/2 - textWidth(text8d)/2;
  float y4 = height/3 + line * 9;
 
  if (counter[14] < text8a.length()){
    counter[14]++;
    text(text8a.substring(0, counter[14]), x1, y1);
  } else {
    text(text8a, x1, y1);
    if (counter[15] < text8b.length()){
      counter[15]++;
      text(text8b.substring(0, counter[15]), x2, y2);
    } else {
      text(text8b, x2, y2);
      if (counter[16] < text8c.length()){
        counter[16]++;
        text(text8c.substring(0, counter[16]), x3, y3);
      } else {
        text(text8c, x3, y3);
        if (counter[17] < text8d.length()){
          counter[17]++;
          text(text8d.substring(0, counter[17]), x4, y4);
        } else {
          pageNumber = 9;
          previousMillis = millis();
          while (millis() - previousMillis <= 5000) {}
          text(text8d, x3, y3);
        }
      }    
    }  
  }
  
}

void message9(){
  
  String text9a = "Take a deep breath";
  String text9b = ".........";
  String text9c = "And let it out.";
  float x1 = width/2 - textWidth(text9a)/2;
  float y1 = height/3;
  float x2 = width/2 - textWidth(text9b)/2;
  float y2 = height/3 + line * 5;
  float x3 = width/2 - textWidth(text9c)/2;
  float y3 = height/3 + line * 10;
  
  if (counter[18] < text9a.length()){
    counter[18]++;
    text(text9a.substring(0, counter[18]), x1, y1);
  } else {
    text(text9a, x1, y1);
    if (counter[19] < text9b.length()){
      previousMillis = millis();
      while (millis() - previousMillis <= 500) {}
      counter[19]++;
      text(text9b.substring(0, counter[19]), x2, y2);
    } else {
      text(text9b, x2, y2);
      if (counter[20] < text9c.length()){
        counter[20]++;
        text(text9c.substring(0, counter[20]), x3, y3);
      } else {
        pageNumber = 2;
        previousMillis = millis();
        while (millis() - previousMillis <= 3000) {}
        text(text9c, x3, y3);
        for (int i = 0; i < 21; i++){
        counter[i] = 0;
        }
      }    
    }  
  }
  
}

void serialEvent(Serial myPort) {
  // read the serial buffer:
  String myString = myPort.readStringUntil('\n');
  if (myString != null) {
    myString = trim(myString);
    println(myString);
    
    pressure = int(myString);
    println(pressure);

  }
}
