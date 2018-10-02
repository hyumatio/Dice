

void setup()
  {
      noLoop();
      size(500,500);
      background(161, 225, 244);
      textSize(25);
      textAlign(CENTER);

    
  }
  void draw()
  {
      int total=0;
      for(int y=30;y<350;y+=90)
    {
      for(int x=43;x<430;x+=90)
        {  
          Die bob = new Die(x,y);
          bob.show();
        
        

          if(bob.dieRoll==1)
            total = total + 1;
          else if(bob.dieRoll==2)
            total = total + 2;
          else if(bob.dieRoll==3)
            total = total + 3;
          else if(bob.dieRoll==4)
            total = total + 4;
          else if(bob.dieRoll==5)
            total = total + 5;
          else if(bob.dieRoll==6)
            total = total + 6;
        }
      }
      text("The total is: "+ total,355,450);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     int myX, myY, dieRoll;
      Die(int x, int y) //constructor
    { 
      myX = x;
      myY = y;
      roll();
    }
       
      void roll()
      {
          dieRoll=(int)(Math.random()*6)+1;
      }
      void show()
      {
          fill(66, 203, 244);
          rect(myX,myY,50,50);
          
          fill(255);
    if(dieRoll==1)
    {
      fill(255);
      ellipse(myX+25,myY+25,15,15);
    }
    else if(dieRoll==2)
    {  fill(255);
      ellipse(myX+15,myY+25,12,12);
      ellipse(myX+35,myY+25,12,12);
    }
    else if(dieRoll==3)
    {
      fill(255);
      ellipse(myX+12,myY+12,12,12);
      ellipse(myX+25,myY+25,12,12);
      ellipse(myX+38,myY+38,12,12);
    }
    else if(dieRoll==4)
    {
      fill(255);
      ellipse(myX+15,myY+15,12,12);
      ellipse(myX+35,myY+15,12,12);
      ellipse(myX+15,myY+35,12,12);
      ellipse(myX+35,myY+35,12,12);
    }
    else if(dieRoll==5)
    {
      fill(255);
      ellipse(myX+13,myY+13,12,12);
      ellipse(myX+37,myY+13,12,12);
      ellipse(myX+13,myY+37,12,12);
      ellipse(myX+37,myY+37,12,12);
      ellipse(myX+25,myY+25,12,12);
    }
    else if(dieRoll==6)
    {
      fill(255);
      ellipse(myX+16,myY+12,12,12);
      ellipse(myX+16,myY+25,12,12);
      ellipse(myX+16,myY+38,12,12);
      ellipse(myX+34,myY+12,12,12);
      ellipse(myX+34,myY+25,12,12);
      ellipse(myX+34,myY+38,12,12);
    }
  }
  }