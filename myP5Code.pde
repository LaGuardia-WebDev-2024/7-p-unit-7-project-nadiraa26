//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 

    
}

//🎯Variable Declarations Go Here
var orangesize = 50;
var orangeposition = 520;
var stemposition = 515;
var arcposition = 525;
var orangecolor = 255;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);

//Orangebody
fill(orangecolor,165,0);
ellipse(orangeposition,75,orangesize,orangesize);
strokeWeight(1);

//Leaf
fill(0,155,0);
arc(arcposition,50,15,15,radians(180),radians(360));

//Stembody
fill(150,75,0);
rect(stemposition,41,5,10);
strokeWeight(1);

//Animation
orangesize = orangesize + 5;
orangeposition = orangeposition - 7;
stemposition = stemposition - 8;
arcposition = arcposition - 8;

//ColorChange
if(orangeposition < 300 ){orangecolor = orangecolor - 3;};
















  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}




}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
