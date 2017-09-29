//make each click add one duckling; add chance of gray duckling; use array to do it
//int bacteriaX2 = 0;
//int bacteriaY2 = 0;

Duck duckSpawn = new Duck();
Duck[] duckNum;
int arrayNum = 4;
void setup()   
{
  size(600,600); 
  duckNum = new Duck[arrayNum];
  for(int i = 0; i < duckNum.length; i++)
  {
    duckNum[i] = new Duck();
  } 
}   
void draw()   
 {  
   //background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
   background(0,191,255);
   for(int i = 0; i < duckNum.length; i++)
   {
     duckNum[i].show();
     duckNum[i].walk();
   }
   duckSpawn.show();
   duckSpawn.walk();
}  
class Duck   
{  
  int duckX, duckY;
  Duck()
  {
    duckX = duckY = 300;
  }
  void walk()
  {
    if(mouseX > duckX)
    {
      duckX = duckX + (int)(Math.random()*5)-1; //right
    }
    else
    {
      duckX = duckX + (int)(Math.random()*5)-3; //left
    }
    if(mouseY > duckY)
    {
      duckY = duckY + (int)(Math.random()*5)-1; //right
    }
    else
    {
      duckY = duckY + (int)(Math.random()*5)-3; //left
    }
    //bacteriaX2 = bacteriaX;
    //bacteriaY2 = bacteriaY;
    //bacteriaX = bacteriaX + (int)(Math.random()*3)-1;
    //bacteriaY = bacteriaY + (int)(Math.random()*3)-1;
  }
  void show()
  {
    //chicks
    
    //fill(255,255,102); //yellow for ducklings
    fill(255,165,0); //orange beak
    stroke(0);
    triangle(duckX,duckY,duckX,duckY + 10,duckX - 10,duckY + 5);
    fill(255,255,102); //yellow for ducklings
    ellipse(duckX + (22/2),duckY + (25/2),(50/2),(30/2));
    ellipse(duckX + (10/2),duckY + (8/2),(30/2),(30/2));
    fill(0); //black for eyes
    ellipse(duckX + (7/2),duckY+ (2/2),(5/2),(5/2));
    
    //mother ducker
    
    //ellipse(bacteriaX,bacteriaY,20,20);
    //ellipse(mouseX,mouseY,50,50);
    fill(255,165,0); //orange beak
    stroke(0);
    triangle(mouseX,mouseY,mouseX,mouseY + 20,mouseX - 20,mouseY + 10);
    fill(139,69,19); //brown for duck
    ellipse(mouseX + 22,mouseY + 25,50,30);
    ellipse(mouseX + 10,mouseY + 8,30,30);
    fill(0); //black for eyes
    ellipse(mouseX + 7,mouseY+2,5,5);

  }
}  
void mousePressed()
{
   //background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
   //fill(255,165,0); //orange beak
   //stroke(0);
   //triangle(bacteriaX,bacteriaY,bacteriaX,bacteriaY + 10,bacteriaX - 10,bacteriaY + 5);
   //fill(255,255,102); //yellow for ducklings
   //ellipse(bacteriaX + (22/2),bacteriaY + (25/2),(50/2),(30/2));
   //ellipse(bacteriaX + (10/2),bacteriaY + (8/2),(30/2),(30/2));
   //fill(0); //black for eyes
   //ellipse(bacteriaX + (7/2),bacteriaY+ (2/2),(5/2),(5/2));
   arrayNum = arrayNum + 1;
   redraw();
   
}