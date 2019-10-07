Die alice;
void setup()
{
	noLoop();
	alice = new Die(10,10);
}
void draw()
{
	alice.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, mySize;
	Die(int x, int y) //constructor
	{
		mySize = 10;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(0,0,0);
		rect(myX,myY,mySize,mySize);
}


