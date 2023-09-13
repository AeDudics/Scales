void setup(){
  size(1500,1500);
}

void draw(){
  for(int y = 10; y <= 1500; y += 500){
    for(int x = 10; x <= 1500; x += 500){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      curvething(x,y);
    }
  }
  for(int n = 0; n <=1500; n += 400){
    for(int m = 0; m <= 1500; m += 100){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      pattern(n,m);
    }
  }
   for(int f = 0; f <=1500; f += 2){
    for(int g = 0; g <= 1500; g += 15){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      pattern2(f,g);
    }
  }
}

void curvething(int x, int y){
    if(Math.random() < 0.5){
      bezier(x*20,y*1500,x*(int)(Math.random()*50),y*(int)(Math.random()*50),x*(int)(Math.random()*50),y*(int)(Math.random()*50),x++,y--);
      bezier(x*1500,y*20,x*(int)(Math.random()*100),y*(int)(Math.random()*100),x*(int)(Math.random()*100),y*(int)(Math.random()*100),x--,y++);
    }
  }
  
void pattern(int n, int m){
  ellipse(n,m,200,200);
}

void pattern2(int f, int g){
  ellipse(f,g,10,10);
}
