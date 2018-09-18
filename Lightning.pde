int startX = 150;
int startY = 250;
int endX = 150;
int endY = 250;
int mousepress = 0;

void setup()
{
strokeWeight(4);
background(0);
size(300,300);
frameRate(5);
}
void draw()
{
	drawLid();
	noStroke();
	fill(200,10,50);
	rect(125,250,50,50);
	fill(150,3,50);
	rect(145,250,10,50);
	rect(125,270,50,10);
	if (mousepress > 1) 
	{
	setupLightning();
	}
}
void drawLightning()
{
	stroke((int)(Math.random()*251),(int)(Math.random()*251),(int)(Math.random()*251));
	while (endY >= 0) {
		endY = startY - (int)(Math.random()*10);
		endX = startX - (int)(Math.random()*16-8);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void setupLightning()
{
	startX = 150;
	startY = 250;
	endX = 150;
	endY = 250;
	drawLightning();
}
void mousePressed(){
	mousepress++;
}
void drawLid()
{
	if (mousepress == 0)
	{
		fill(200,10,50);
		rect(120,250,60,20);
	}
	else if (mousepress == 1)
	{
		background(0);
	}
}
