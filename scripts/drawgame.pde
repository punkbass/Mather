int horBlks = 28;
int verBlks = 10;

int w = horBlks * 20;
int h = verBlks * 20;

void setup() { 
  size(w, h);
  background(1,1,1);
  //noLoop();
}

var mapD = [
 [wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr],
 [wtr,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,wtr,grs,grs,smp,smp,smp,smp,smp,smp,wtr],
 [wtr,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,flr,pth,pth,smp,smp,smp,smp,smp,smp,wtr],
 [wtr,grs,brk,brk,brk,brk,brk,brk,grs,grs,grs,brk,brk,brk,brk,brk,brk,grs,grs,wtr,grs,pth,pth,pth,smp,smp,smp,smp,wtr],
 [wtr,grs,brk,flr,flr,flr,flr,brk,grs,grs,grs,brk,rug,rug,rug,rug,brk,grs,grs,wtr,grs,grs,grs,pth,pth,smp,smp,smp,wtr],
 [wtr,grs,brk,flr,Frd,flr,flr,brk,grs,grs,grs,brk,rug,rug,rug,rug,brk,grs,grs,wtr,brk,brk,brk,grs,pth,smp,smp,smp,wtr],
 [wtr,grs,brk,flr,flr,flr,flr,brk,grs,grs,grs,brk,rug,rug,rug,rug,brk,grs,grs,wtr,brk,grs,brk,grs,pth,smp,smp,smp,wtr],
 [wtr,grs,brk,flr,flr,flr,flr,brk,grs,grs,grs,brk,rug,rug,rug,rug,brk,grs,grs,wtr,brk,grs,brk,grs,pth,smp,smp,smp,wtr],
 [wtr,grs,brk,brk,flr,brk,brk,brk,grs,grs,grs,brk,brk,brk,rug,brk,brk,grs,grs,wtr,grs,pth,pth,pth,pth,smp,smp,smp,wtr],
 [wtr,grs,grs,grs,pth,grs,grs,grs,grs,grs,grs,grs,grs,grs,pth,grs,grs,grs,grs,wtr,grs,grs,grs,pth,pth,smp,smp,smp,wtr],
 [wtr,grs,grs,grs,pth,grs,grs,grs,grs,grs,grs,grs,grs,grs,pth,grs,grs,grs,grs,wtr,grs,grs,grs,pth,pth,smp,smp,smp,wtr],
 [wtr,grs,grs,grs,pth,pth,pth,pth,pth,pth,pth,pth,pth,pth,pth,pth,pth,pth,pth,flr,pth,pth,pth,pth,smp,smp,smp,smp,wtr],
 [wtr,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,grs,pth,pth,grs,grs,grs,grs,wtr,smp,smp,smp,smp,smp,smp,smp,smp,wtr],
 [wtr,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,wtr,smp,smp,smp,smp,smp,smp,smp,smp,wtr],
 [wtr,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,snd,wtr,smp,smp,smp,smp,smp,smp,smp,smp,wtr],
 [wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr],
 [wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr,wtr]];
 
void draw() {

  int mapX0 = player.mapX - player.x/20;
  int mapY0 = player.mapY - player.y/20;
  int yi = 1;
  int xi = 1;
  
  for(int y = 1; y <= verBlks; y++) {
    yi = y + mapY0;
    if (yi > -1 && yi < mapD.length) {
      for(int x = 1; x <= horBlks; x++) {
        xi = x + mapX0;
        if (xi > -1 && xi < mapD[yi].length) {
          draw_bg(mapD[yi][xi].draw,x,y);
        }
      }
    }
  }
 
draw_PlayerFacingDown(); 
}

void draw_PlayerFacingDown() {
  var newx = player.x-10;
  var newy = player.y-20;
  fill(player.skin[0],player.skin[1],player.skin[2]);
  //ears
  ellipse(newx-6-player.face*2,newy-12,4,4);
  ellipse(newx+6+player.face*2,newy-12,4,4);
   // head
  ellipse(newx,newy-10,12+player.face*4,20);

  // arms
  rect(newx-10,newy+8,4,4);
  rect(newx+6,newy+8,4,4);

  // tshirt
  fill(player.tColor[0],player.tColor[1],player.tColor[2]);
  rect(newx-6,newy,12,14);
  rect(newx-10,newy,4,8);
  rect(newx+6,newy,4,8);

  /*
  // hat
  rect(newx-player.face-6, newy-25, player.face*2+12, 5);
  fill(0,0,100);
  rect(newx-player.face-6-3, newy-21, 3, 2);
  */

  // tshirt logo
  fill(255,255,255);
  text(player.tshirt,newx-3,newy+10);

  // eye whites
  fill(255,255,255);
  ellipse(newx-3-player.face,newy-11,4,5);
  ellipse(newx+3+player.face,newy-11,4,5);

  //pupils
  fill(0,0,0);
  ellipse(newx-3-player.face,newy-11,1,1);
  ellipse(newx+3+player.face,newy-11,1,1);

  // mouth
  rect(newx-3,newy-5,6,1);

  // hair
  for(x = newx-player.face*2; x <= newx+player.face*2; x+=2) {
    noFill();
    stroke(player.hairColor[0],player.hairColor[1],player.hairColor[2]);
    ellipse(x,newy-20,2,3);
  }
  stroke(0,0,0);

  //pants
  fill(player.pColor[0],player.pColor[1],player.pColor[2]);
  noStroke();
  rect(newx-6,newy+16,4,3);
  rect(newx+2, newy+16,4,3);
  rect(newx-6,newy+14,12,2);
  stroke(0,0,0);

  //shoes
  fill(0,0,0);
  rect(newx-5,newy+18,5,2);
  rect(newx+2,newy+18,5,2);
}

void draw_floor(x,y) {
    //stroke(255, 255, 255);
    x = 20*x-20;
    y = 20*y-20;
    for(var xi = x; xi < x+16; xi+=8) {
        //1st line
        //stroke(51, 32, 2);
        fill(random(100,125),random(75,100),0);
        rect(xi,y,4,7);
        fill(random(100,125),random(75,100),0);
        rect(xi,y+7,4,7);
        //stroke(30, 0, 0);
        fill(random(100,125),random(75,100),0);
        rect(xi,y+14,4,6);
        //2nd line
        noStroke();
        fill(random(100,125),random(75,100),0);
        rect(xi+4,y,4,4);
        fill(random(100,125),random(75,100),0);
        rect(xi+4,y+16,4,4);
        //stroke(30, 0, 0);
        fill(random(100,125),random(75,100),0);
        rect(xi+4,y+4,4,7);
        fill(random(100,125),random(75,100),0);
        rect(xi+4,y+10,4,6);
    }
    //last line
    var xi = x+16;
    //stroke(51, 32, 2);
    fill(random(100,125),random(75,100),0);
    rect(xi,y,4,7);
    fill(random(100,125),random(75,100),0);
    rect(xi,y+7,4,7);
    //stroke(30, 0, 0);
    fill(random(100,125),random(75,100),0);
    rect(xi,y+14,4,6);
}

void draw_npc(x,y,skin,clothes,cc,hair,hairCol) {
   x = 20*x-20;
   y = 20*y-20;
  // face
  fill(skin[0],skin[1],skin[2]);
  ellipse(x+10,y+5,20,10);
  // eyes
  fill(0,0,0);
  ellipse(x+5,y+5,2,4);
  ellipse(x+15,y+5,2,4); 
  // mouth
  rect(x+5,y+8,10,1);
  //hair
  switch(hair) {
    case 'bald':
      break;
  }
  //body
  switch(clothes) {
    case 'cloak':
      fill(cc[0],cc[1],cc[2]);
      rect(x+4,y+10,12,10);
      rect(x,y+10,4,5);
      rect(x+16,y+10,4,5);
      fill(skin[0],skin[1],skin[2]);
      rect(x,y+15,4,4);
      rect(x+16,y+15,4,4);
      break;
  }
}

void draw_bg(bgo, x,y) {
  switch(bgo) {
    case 'brick':
      //stroke(255, 255, 255);
      x = 20*x-20;
      y = 20*y-20;
      for(var yi = y; yi < y+16; yi+=8) {
        //1st line
        stroke(30, 0, 0);
        fill(random(31,255),0,0);
        rect(x,yi,6,4);
        fill(random(31,225),0,0);
        rect(x+7,yi,7,4);
        stroke(30, 0, 0);
        fill(random(31,225),0,0);
        rect(x+14,yi,6,4);
        //2nd line
        noStroke();
        fill(random(31,255),0,0);
        rect(x,yi+4,4,4);
        fill(random(31,225),0,0);
        rect(x+16,yi+4,4,4);
        stroke(30, 0, 0);
        fill(random(31,225),0,0);
        rect(x+4,yi+4,7,4);
        fill(random(31,225),0,0);
        rect(x+10,yi+4,6,4);
      }
      //last line
      var yi = y+16;
      stroke(30, 0, 0);
      fill(random(31,255),0,0);
      rect(x,yi,6,4);
      fill(random(31,225),0,0);
      rect(x+7,yi,7,4);
      stroke(30, 0, 0);
      fill(random(31,225),0,0);
      rect(x+14,yi,6,4);
      rect(x+10,yi,6,4);
      noStroke();
      break;
      
    case 'rug':
        noStroke();
        x = 20*x-20;
        y = 20*y-20;
        for(var xi = x; xi < x+20; xi+=5) {
          for(var yi = y; yi < y+20; yi+=5) {
            noStroke();
            fill(random(175,200), 0, 0);
            rect(xi,yi,5,5);
          }
        }
        break;
      
  case 'grass':
    noStroke();
    x = 20*x-20;
    y = 20*y-20;
    for(var xi = x; xi < x+20; xi+=5) {
        for(var yi = y; yi < y+20; yi+=5) {
            noStroke();
            fill(random(75,100),random(225,255),random(75,100));
            rect(xi,yi,5,5);
        }
    }
  break;
      
  case 'floor':
    draw_floor(x,y);
    break;
    
  case 'Fred':
    draw_floor(x,y);
    draw_npc(x,y,[217, 183, 31],'cloak',[150,150,150],'bald',[100,100,100]);
    break;
      
  case 'path':
    noStroke();
    x = 20*x-20;
    y = 20*y-20;
    for(var xi = x; xi < x+20; xi+=5) {
        for(var yi = y; yi < y+20; yi+=5) {
            noStroke();
            fill(random(175,200), random(175,200), 0);
            rect(xi,yi,5,5);
        }
    }
    break;
      
  case 'sand':
    noStroke();
    x = 20*x-20;
    y = 20*y-20;
    for(var xi = x; xi < x+20; xi+=5) {
        for(var yi = y; yi < y+20; yi+=5) {
            noStroke();
            //224, 166, 137
            fill(random(230,255), random(200,229), random(175,199));
            rect(xi,yi,5,5);
        }
    }
    break;
  
  case 'swamp':
    noStroke();
    x = 20*x-20;
    y = 20*y-20;
    for(var xi = x; xi < x+20; xi+=5) {
        for(var yi = y; yi < y+20; yi+=5) {
            noStroke();
            fill(0,random(50,200),random(50,150));
            rect(xi,yi,5,5);
        }
    }
    break;
  
  case 'water':
    noStroke();
    x = 20*x-20;
    y = 20*y-20;
    for(var xi = x; xi < x+20; xi+=5) {
        for(var yi = y; yi < y+20; yi+=5) {
            noStroke();
            fill(random(0,50),random(0,50),random(225,255));
            rect(xi,yi,5,5);
        }
    }
    break;
  
  }
}



  
  

 


           
