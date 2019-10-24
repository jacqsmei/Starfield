//your code here
Particle [] uwu;
void setup()
{
	//your code here
	size(500, 500);
	background(0);
	uwu = new Particle[500];
	for (int i=0; i<uwu.length; i++) {
		uwu[i] = new Particle();
	}
}
void draw()
{
	//your code here
	fill(0, 0, 0, 40);
  	stroke(0, 0, 0, 40);
 	rect(0, 0, 500, 500);

	for (int i=0; i<uwu.length; i++) {
		uwu[i].show();
		uwu[i].move();
	}
}
void mousePressed(){
	setup();
}
class Particle
{
	//your code here
	protected double myX, myY, myA, myS, mySize;
	protected int myC;
	Particle() {
		myX = myY = 250;
		myA = Math.random()*6.28318530718;
		myS = Math.random()*2;
		mySize = 1;
		myC = 255;
	}
	public void show() {
		fill(255);
		stroke(255);
		ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
	}
	public void move() {
		myX = myX + Math.cos(myA) * myS;
		myY = myY + Math.sin(myA) * myS;
		if(abs((float)myX-250)>75 && abs((float)myY-250)>75)
			mySize+=0.01;
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


