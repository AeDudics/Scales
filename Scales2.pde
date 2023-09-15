void setup(){
  size(1500,1500);
}

void draw(){
  if(Math.random() > 0.5){
    background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  
  for(int y = 10; y <= 1500; y += 500){
   for(int x = 10; x <= 1500; x += 500){
     fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     pattern(x,y);
    }
  }
}

void pattern(int x, int y){
  stroke(0);
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  ellipse(750,750,300,300);
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  ellipse(750,750,100,100);
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  triangle(x, y, x-20, y+20, 0, 0);
  triangle(x, y, x+20, y-20, 0, 0);
  triangle(x, y, x-20, y+20, 1500, 0);
  triangle(x, y, x+20, y-20, 1500, 0);
  triangle(x, y, x-20, y+20, 0, 1500);
  triangle(x, y, x+20, y-20, 0, 1500);
  triangle(x, y, x-20, y+20, 1500, 1500);
  triangle(x, y, x+20, y-20, 1500, 1500);
}
