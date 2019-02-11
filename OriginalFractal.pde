public void setup()
{
  size(900,900);
}

public void draw()
{
	background(0,0,0);
	noFill();
	
  strokeWeight(0.25);
	fractal(450,300,650,400,450,500,250,400,600,190);
}

public void fractal(float a, float b, float c, float d, float e, float f, float g, float h, float inc, int bl)
{
  stroke(50,160,bl);
	quad(a,b,c,d,e,f,g,h);
	if(inc > 10)
	{
		fractal(a-inc,b,c-inc,d,e-inc,f,g-inc,h,inc/2.47,bl+100);
	    fractal(a+inc,b,c+inc,d,e+inc,f,g+inc,h,inc/2.47,bl+100);
	    fractal(a,b-inc,c,d-inc,e,f-inc,g,h-inc,inc/2.47,bl+100);
	    fractal(a,b+inc,c,d+inc,e,f+inc,g,h+inc,inc/2.47,bl+100);
	}
		
}
