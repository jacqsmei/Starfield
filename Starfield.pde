//your code here
Particle [] uwu;
void setup()
{
	//your code here
	size(500, 500);
	background(0);
	uwu = new Particle[50];
	for (int i=0; i<uwu.length; i++) {
		uwu[i] = new Particle();
	}
}
void draw()
{
	//your code here
	background(0);
	for (int i=0; i<uwu.length; i++) {
		uwu[i].show();
		uwu[i].move();
	}
}
class Particle
{
	//your code here
	protected double myX, myY, myA, myS;
	protected int myC;
	Particle() {
		myX = myY = 250;
		myA = Math.random()*6.28318530718;
		myS = Math.random()*2;
		myC = 255;
	}
	public void show() {
		ellipse((float)myX, (float)myY, 10, 10);
	}
	public void move() {
		myX = myX + Math.cos(myA) * myS;
		myY = myY + Math.sin(myA) * myS;
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


