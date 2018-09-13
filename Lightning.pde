int startX = 150;
int startY = 250;
int endX = 150;
int endY = 250;

void setup()
{
strokeWeight(2);
background(0);
size(300,300);
}
void draw()
{
	fill(200,10,50);
	rect(125,250,50,50);
	fill(150,3,50);
	noStroke();
	rect(145,250,10,50);
	rect(125,270,50,10);
}
void drawLightning()
{
	stroke((int)(Math.random()*251),(int)(Math.random()*251),(int)(Math.random()*251));
	while (endY >= 0) {
		endY = startY - (int)(Math.random()*8);
		endX = startX - (int)(Math.random()*10-5);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}

void mousePressed()
{
	startX = 150;
	startY = 250;
	endX = 150;
	endY = 250;
	drawLightning();
}
