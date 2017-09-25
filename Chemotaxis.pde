Bacteria[] bacteriaSpawn;
 void setup()   
 {     
 	size(600,600); 
 	bacteriaSpawn = new Bacteria[300];
 	for(int x = 0; x <= bacteriaSpawn.length; x++)
 	{
 		bacteriaSpawn[x] = new Bacteria();
 	} 
 }   
 void draw()   
 {  
 	background(0);
 	for(int x = 0; x <=bacteriaSpawn.length; x++)
 	{
 		bacteriaSpawn[x].show();
 	}
 }  
 class Bacteria    
 {  
 	int bacteriaX, bacteriaY;
 	Bacteria()
 	{
 		bacteriaX = (int)(Math.random()*600);
 		bacteriaY = (int)(Math.random()*600);
 	}
 	void show()
 	{
 		ellipse(bacteriaX,bacteriaY,50,50);
 	}
 }    