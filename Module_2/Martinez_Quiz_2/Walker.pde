class Walker
{
float x;
float y;

void render()
{
  int r = int(random(256));
  int g = int(random(256));
  int b = int(random(256));
  int a = int(random(50,100));
  
color random = color (r,g,b,a);
//color white = color (255,255,255);
fill(random);
//stroke(white);

circle(x,y,35);



}

void randomWalk()
{
int rng = int(random(8));

if (rng == 0)
{
x -= 10;
y +=10;
} else if (rng == 1)
{
x += 10;
y +=10;
} else if (rng == 2)
{
y -= 10;
x += 10;
} else if (rng == 3)
{
y -= 10;
x -= 10;
} else if (rng == 4)
{
y +=10;
} else if (rng == 5)
{
y -=10;
} else if (rng == 6)
{
x += 10;
} else if (rng == 7)
{
x -= 10;
}

}
void randomWalkBiased()
{
int rng = int(random(10));

if (rng == 0)
{
y +=10;
} else if (rng == 1)
{
y +=10;
} else if (rng == 2)
{
y -= 10;
} else if (rng == 3)
{
y -= 10;
} else if (rng == 4)
{
x +=10;
} else if (rng == 5)
{
x +=10;
} else if (rng == 6)
{
x += 10;
} else if (rng == 7)
{
x += 10;
}else if (rng == 8)
{
x -= 10;
}else if (rng == 9)
{
x -= 10;
}

}

}
