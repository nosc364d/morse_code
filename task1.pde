color c1 = color(0,138,204);
int r1 = 20;
String input = "";
int li = input.length();
int mode = 0;
String output = "";
int p = 0;

void setup(){
  size(700,400);
  
}

void draw() {
  background(0, 33, 51);
  
  // eingabe-mode == 0
  
  if (mode == 0) {
    fill(c1);
    noStroke();
    rect(300,250,100,50, r1,r1,r1,r1);
    textSize(20);
    fill(255);
    text("convert",315,280);
    
    if (mouseX>300) {
      if (mouseX<400) {
        if (mouseY>250) {
          if (mouseY<300) {
            c1 = color(0,188,259);
            r1 = 15;
          }
        }
      }
    } else if (mode == 0) {
      c1 = color(0,138,204);
      r1 = 20;
    } else {
      background(0, 33, 51);
    }
    
  
    fill(0,66,84);
    stroke(0,100,128);
    rect(100,100,500,120);
    textSize(15);
    fill(255);
    text(input, 105, 100, 490, 120);
    li = input.length();
    textSize(10);
    text(li + "/200",570,230);
    } else {
      fill(210,240,240);
      stroke(255);
      rect(50,50,600,250);
    }
    
    // translation-mode == 2
    
    if (mode == 2) {
      input = input.toLowerCase();
      li = input.length();
      
      for (p = 0; p < li; p += 1) {
        
        
        char check = input.charAt(p);
        
        switch (check) {
          case ' ':
            output += "/ ";
            break;
          case 'a':
            output += ".- ";
            break;
          case 'b':
            output += "-... ";
            break;
          case 'c':
            output += "-.-. ";
            break;
          case 'd':
            output += "-.. ";
            break;
          case 'e':
            output += ". ";
            break;
          case 'f':
            output += "..-. ";
            break;
          case 'g':
            output += "--. ";
            break;
          case 'h':
            output += ".... ";
            break;
          case 'i':
            output += ".. ";
            break;
          case 'j':
            output += ".--- ";
            break;
          case 'k':
            output += "-.- ";
            break;
          case 'l':
            output += ".-.. ";
            break;
          case 'm':
            output += "-- ";
            break;
          case 'n':
            output += "-. ";
            break;
          case 'o':
            output += "--- ";
            break;
          case 'p':
            output += ".--. ";
            break;
          case 'q':
            output += "--.- ";
            break;
          case 'r':
            output += ".-. ";
            break;
          case 's':
            output += "... ";
            break;
          case 't':
            output += "- ";
            break;
          case 'u':
            output += "..- ";
            break;
          case 'v':
            output += "...- ";
            break;
          case 'w':
            output += ".-- ";
            break;
          case 'x':
            output += "-..- ";
            break;
          case 'y':
            output += "-.-- ";
            break;
          case 'z':
            output += "--.. ";
            break;
          case '.':
            output += ".-.-.- ";
            break;
          case ',':
            output += "--..-- ";
            break;
          case '?':
            output += "..--.. ";
            break;
          case '!':
            output += "-.-.-- ";
            break;
          case '"':
            output += ".-..-. ";
            break;
          case '(':
            output += "-.--. ";
            break;
          case ')':
            output += "-.--.- ";
            break;
          case '&':
            output += ".-... ";
            break;
          case ':':
            output += "---... ";
            break;
          case ';':
            output += "-.-.-. ";
            break;
          case '/':
            output += "-..-. ";
            break;
          case '_':
            output += "..--.- ";
            break;
          case '=':
            output += "-...- ";
            break;
          case '+':
            output += ".-.-. ";
            break;
          case '-':
            output += "-....- ";
            break;
          default:
            output += "? ";
            break;
        }
        
        
      }
      
      mode = 1;
      
    }
    
    //result-mode == 1
    
    if (mode == 1) {
      textSize(20);
      fill(0);
      
      text(output, 55,50,590,250);
      
      // button for reset
      
      fill(c1);
      noStroke();
      rect(300,320,100,50, r1,r1,r1,r1);
      textSize(20);
      fill(255);
      text("reset",325,350);
      
      if (mouseX>300) {
        if (mouseX<400) {
          if (mouseY>320) {
            if (mouseY<370) {
              c1 = color(0,188,259);
              r1 = 15;
            }
          }
        }
      } else if (mode == 1) {
        c1 = color(0,138,204);
        r1 = 20;
      } else {
        background(0, 33, 51);
      }
    }
  
}

//input via keyboard

void keyPressed() {
  
  if (key == BACKSPACE) {
    if (li > 0) {
      li = input.length();
      input = input.substring(0, li-1);
    }
  } else if (key == CODED) {
    // do nothing
  } else {
    input += key;
  }

}

//button - functionality

void mouseClicked() {
  if (mode == 0){
    if (mouseX>300) {
      if (mouseX<400) {
        if (mouseY>250) {
          if (mouseY<300) {
            mode = 2;
          }
        }
      }
    }
  } else {
     if (mouseX>300) {
      if (mouseX<400) {
        if (mouseY>320) {
          if (mouseY<370) {
            mode = 0;
            input = "";
            output = "";
          }
        }
      }
    }
  }
}
