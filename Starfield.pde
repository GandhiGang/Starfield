Particle [] gamer = new Particle[1000];
void setup()
{
	background(0);
	size(500, 500);
	for(int i = 0; i < gamer.length; i++)
		gamer[i] = new Particle();
	gamer[999] = new OddballParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i < gamer.length; i++){
		gamer[i].move();
		gamer[i].show();
	}
}
void mousePressed(){
	for(int i = 0; i < gamer.length; i++)
		gamer[i] = new Particle();
	gamer[999] = new OddballParticle();
}
class Particle
{
	double x, y, angle, speed;
	int col;
	Particle(){
		x = y = 250;
		angle = Math.random()*2*PI;
		speed = Math.random()*5;
		col = color(255);
	}
	void move(){
		x += Math.cos(angle)*speed;
		y += Math.sin(angle)*speed;
	}
	void show(){
		noStroke();
		fill(col);
		ellipse((float)x, (float)y, (float)5, (float)5);	
	}
}

class OddballParticle extends Particle
{
	OddballParticle(){
		x = Math.random()*300+100;
		y = Math.random()*300+100;
	}
	void move(){
		x += Math.random()*5-2.5;
		y += Math.random()*5-2.5;
	}
	void show(){
		noStroke();
		fill(160,82,45);
		ellipse((float)x, (float)y, (float)100, (float)100);
		fill(0);
		ellipse((float)x-20, (float)y-10, 10, 10);
		ellipse((float)x+20, (float)y-10, 10, 10);
		noFill();
		stroke(0);
		strokeWeight(3);
		ellipse((float)x-20, (float)y-10, 20, 20);
		ellipse((float)x+20, (float)y-10, 20, 20);
		line((float)x-10, (float)y-10, (float)x+10, (float)y-10);

	}
}


