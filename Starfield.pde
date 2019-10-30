//your code here
PImage astronaut;
Particle [] uwu;
void setup()
{
	//your code here
	astronaut = loadImage("data/astronaut-helmet-icon.png");
	size(500, 500);
	background(0);
	uwu = new Particle[750];
	for (int i=0; i<uwu.length; i++) {
		uwu[i] = new Particle();
		uwu[0] = new OddballParticle();
		uwu[1] = new OddballParticle();
		uwu[2] = new OddballParticle();
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
		myA = Math.random()*TWO_PI;
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
		if(abs((float)myX-250)>75 || abs((float)myY-250)>75) {
			myS-=0.01;
		}
		if (abs((float)myX-250)<75 || abs((float)myY-250)<75) {
		
			myS+=0.005;
		}
	}
}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here
	OddballParticle() {
		myX = myY = 250;
		myA = Math.random()*TWO_PI;
		myS = Math.random()*2;
		mySize = 30;
		myC = 150;
	}
	public void show() {
		image(astronaut, (float)myX, (float)myY, (float)mySize, (float)mySize);

	}
	public void move() {
		myX = myX + Math.cos(myA) * myS;
		myY = myY + Math.sin(myA) * myS;
		if(abs((float)myX-250)>75 || abs((float)myY-250)>75) {
			myS-=0.01;
			mySize+=0.2;
		}
		if (abs((float)myX-250)<75 || abs((float)myY-250)<75) {
			myS+=0.005;
			mySize-=0.2;
		}
		while (mySize>50) {
			mySize-=0.2;
		}
	}
}
