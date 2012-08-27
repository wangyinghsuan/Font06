/**
     A 'S' drawn by horizontal line and bezier curve matrixes.
     wang ying hsuan 26/08/2012
     ying_hsuan52@hotmail.com
  */

size(400,400);
noFill();
smooth();
background(255);
strokeWeight(8);
strokeCap(PROJECT);


bezier(80, 140, 80, 0, 270, 0, 270, 140);
for (int i = 0; i <= 50; i++) {
  strokeWeight(4);

  float t = i / 50.0 ;
  float x = bezierPoint(80, 80, 270,270, t);
  float y = bezierPoint(140, 0, 0, 140, t);
  line(x, y, x+50, y);
}
strokeWeight(8);
strokeCap(PROJECT);

bezier(80, 260, 80, 400, 270, 400, 270, 260);
for (int i = 0; i <= 50; i++) {
  strokeWeight(4);

  float t = i / 50.0 ;
  strokeCap(SQUARE);
  float x = bezierPoint(80, 80, 270,270, t);
  float y = bezierPoint(260, 400, 400, 260, t);
  line(x, y, x+50, y);
}
strokeWeight(8);
strokeCap(PROJECT);

bezier(80, 140, 70, 230, 280, 170, 270, 260);
for (int i = 0; i <= 50; i= i+2) {
  strokeWeight(4);

  float t = i / 50.0 ;
  strokeCap(SQUARE);
  float x = bezierPoint(80, 70, 280,270, t);
  float y = bezierPoint(140, 230, 170, 260, t);
  line(x, y, x+50, y);
}

save("font06.jpg");
