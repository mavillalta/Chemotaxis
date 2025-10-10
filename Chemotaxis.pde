Bacteria[] bac;
 void setup()   
 {     
   size(500,500);
   background(255);
   bac = new Bacteria[100];
   for(int i=0;i<bac.length;i++)
     bac[i]= new Bacteria();  
 }   
 void draw()   
 {    
   background(255);
   for(int i=0;i<100;i++){    
    bac[i].show();
    bac[i].move();  
   }
 }  
 class Bacteria    
 {     
   int x,y,r,g,b;
   Bacteria(){
     x=(int)(Math.random()*500);
     y=(int)(Math.random()*500);
     r=(int)(Math.random()*255);
     g=(int)(Math.random()*255);
     b=(int)(Math.random()*255);
   }
   void move(){
    if((mouseX-x)*(mouseX-x)+(mouseY-y)*(mouseY-y)<1000){
     x=x+(int)(Math.random()*3)-1; 
     y=y+(int)(Math.random()*3)-1;
    }
  else{
     x=x+(int)(Math.random()/((mouseX-x)*(mouseX-x)+(mouseY-y)*(mouseY-y))*20000*Math.abs(mouseX-x)/(mouseX-x))-(int)(1/((mouseX-x)*(mouseX-x)+(mouseY-y)*(mouseY-y))*7000);
     y=y+(int)(Math.random()/((mouseX-x)*(mouseX-x)+(mouseY-y)*(mouseY-y))*20000*Math.abs(mouseY-y)/(mouseY-y))-(int)(1/((mouseX-x)*(mouseX-x)+(mouseY-y)*(mouseY-y))*7000);
    }
   }
   void show(){
    fill(r,g,b);
    ellipse(x,y,10,10);
   }
 }
