Particle[] edward;

void setup()
{
	size(450,450);
	
	edward = new Particle[200];
	for (int i = 0; i <edward.length; i++){
		edward[i] = new NormalParticle();
	}
	edward[0] = new OddballParticle();
	edward[2] = new JumboParticle();
	//edward = new NormalParticle();
	//weener = new NormalParticle();

}
void draw()
{

	fill(22, 23, 36, 110);
	rect(0, 0, 450, 450);

	for (int i = 0; i < edward.length; i++){
		edward[i].move();
		edward[i].show();
	}

	
}
class NormalParticle implements Particle
{
	double x, y, speed, angle;
	int kolor;

	NormalParticle() {
		x = 225;
		y = 225;
		//speed = (Math.random()*5);
		speed = 3.25;
		//kolor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		kolor = color(255, 255, 255);
		angle = (Math.random()*2*(Math.PI));
	}

	public void move(){
		x = Math.cos(angle)*speed+x;
		y = Math.sin(angle)*speed+y;
		angle=angle;

	}

	public void show(){
		noStroke();
		fill(kolor, 150);
		ellipse((float)x, (float)y, 10, 10);
		if (x > 450 || x < 0 || y > 450 || y < 0) {
			kolor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
			//kolor = color(255,255,255);
			angle = (Math.random()*2*(Math.PI));
			x = (Math.random()*20+225);
			y = (Math.random()*20+225);
			x = 225;
			y = 225;
		}
		if ((int)x > 222 && (int)x < 228  && (int)y < 228 && (int)y>222){
		
			//kolor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		}
	}
}

class OddballParticle implements Particle
{
	double x, y, speedx, speedy;

		OddballParticle() {
		x = 225;
		y = 225;
		speedx = Math.random()*9 - 4.5;
		speedy = Math.random()*9 - 4.5;
	
	}

	public void move(){
	speedx= Math.random()*9-4.5;
	speedy= Math.random()*9-4.5;


	}
	public void show(){
	noStroke();
	fill(74,22,199);
	rect((float)x, (float)y, 40, 40);
	x = x + speedx;
	y = y+speedy;
	if (x > 510 || x < -60 || y > 510 || y < -60) {
			x = 225;
			y = 225;
		}
	}

}

interface Particle
{
	public void move();
	public void show();
}

class JumboParticle extends NormalParticle
{
	JumboParticle(){

	}

	public void show()
	{
		noStroke();
		fill(kolor);
		ellipse((float)x, (float)y, 120, 120);

			if (x > 510 || x < -60 || y > 510 || y < -60) {
			kolor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
			//kolor = color(255,255,255);
			angle = (Math.random()*2*(Math.PI));
			x = (Math.random()*20+225);
			y = (Math.random()*20+225);
			x = 225;
			y = 225;
		}
	}
}

