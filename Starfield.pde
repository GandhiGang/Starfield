Particle [] gamer = new Particle[1000];
void setup()
{
	background(0);
	size(500, 500);
	for(int i = 0; i < gamer.length; i++)
		gamer[i] = new Particle();
	gamer[0] = new OddballParticle();
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
	gamer[0] = new OddballParticle();
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
		fill(col);
		ellipse((float)x, (float)y, (int)5, (int)5);	
	}
}

class OddballParticle extends Particle
{
	OddballParticle(){
		
	}
}


