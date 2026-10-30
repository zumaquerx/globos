class Globo
{
  float x, y,vx,vy;
  color c;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   c=color(random(0,255),random(0,255),random(0,255));
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
    fill(c);  
    rect(x-30,y-50,120,200);
    imageMode(CENTER);
    image(Gianlu,x,y,60,100);
    triangle(x,y+50,x-10,y+60,x+10,y+60);
  }
  
}

ArrayList<Globo> globos;

PImage Gianlu;
void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
  Gianlu=loadImage("Gianlu.jpeg");
}

void draw()
{
  background(50,89,0);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
