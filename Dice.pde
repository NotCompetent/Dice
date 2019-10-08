Die alice;
void setup()
{
	size(550,600);
	noLoop();
	alice = new Die(75,75);
}
void draw()
{
	background(192);
	int total = 0;
	for(int i = 25; i < 500; i+= 75){
		for(int j = 25;j < 500;  j += 75){
			alice = new Die(i,j);
			alice.show();
			total = total + alice.roll;
		}
	}
	text("The total number that you rolled was: " + total,150,575);
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, mySize, roll;
	Die(int x, int y) //constructor
	{
		mySize = 50;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//int roll = 0;
		//roll = (int)(Math.random()*6);
		//return roll;
	}
	void show()
	{
		fill(255,255,255);
		rect(myX,myY,mySize,mySize);
		roll = (int)(Math.random()*6);
		if(roll == 1){
			fill(0,0,0);
			ellipse(myX+25,myY+25,10,10);
		}else if (roll == 2){
			fill(0,0,0);
			ellipse(myX+15,myY+25,10,10);
			ellipse(myX+35,myY+25,10,10);
		}else if(roll == 3){
			fill(0,0,0);
			ellipse(myX+25,myY+10,10,10);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+25,myY+40,10,10);
		}else if(roll == 4){
			fill(0,0,0);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+35,10,10);
		}else if(roll == 5){
			fill(0,0,0);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+35,10,10);
			ellipse(myX+25,myY+25,10,10);
		}else{
			fill(0,0,0);
			ellipse(myX+15,myY+10,10,10);
			ellipse(myX+15,myY+25,10,10);
			ellipse(myX+15,myY+40,10,10);
			ellipse(myX+35,myY+10,10,10);
			ellipse(myX+35,myY+25,10,10);
			ellipse(myX+35,myY+40,10,10);
		}
	}
}


