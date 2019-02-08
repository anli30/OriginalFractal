public void setup()
{
  size(1000,1000);
}

public void draw()
{
	background(0,0,0);
	noFill();
	
  for(int i = 0; i < 700; i +=200)
  {
    stroke(#90E0FF);
    fractal(250+i,100+i,350+i,100+i,250 +i,300+i,50+i,200+i,800);
  }
}

public void fractal(int a, int b, int c, int d, int e, int f, int g, int h, int inc)
{
	quad(a,b,c,d,e,f,g,h);
	if(inc > 10)
	{
		fractal(a-inc,b,c-inc,d,e-inc,f,g-inc,h,inc-200);
    fractal(a+inc,b,c+inc,d,e+inc,f,g+inc,h,inc-10);
	}
}
