int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
strokeWeight(5);
background(0);
size(300,300);
}
void draw()
{
	stroke((int)(Math.random()*251),(int)(Math.random()*251),(int)(Math.random()*251))
	;
	while (endX <= 300) {
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*10-5);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;

	}
}
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

