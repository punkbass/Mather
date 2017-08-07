var w = 600;
var h = 400;

void setup() { 
  size(w, h);
}

void draw() {
  //fill(255,0,0);
  //ellipse(200,200,10,10);
  //rect(200,205,10,10);
  //fill(255,255,255);
  //text('e',200,210);
  
  // face
  fill(player.skin[0],player.skin[1],player.skin[2]);
  ellipse(player.x,player.y-10,12+player.face*4,20);
  
  // arms
  rect(player.x-14,player.y+4,4.6);
  rect(player.x+10,player.y+4,4.6);
  
  // tshirt
  fill(player.tColor[0],player.tColor[1],player.tColor[2]);
  rect(player.x-10,player.y,20,20);
  rect(player.x-14,player.y,4.4);
  rect(player.x+10,player.y,4.4);
  
  // tshirt logo
  fill(255,255,255);
  text(player.tshirt,player.x-5,player.y+15);
  // eye whites
  ellipse(player.x-3-player.face,player.y-15,3,3);
  ellipse(player.x+3+player.face,player.y-15,3,3);
  
  fill(0,0,0);
  ellipse(player.x-3-player.face,player.y-15,1,1);
  ellipse(player.x+3+player.face,player.y-15,1,1);
}