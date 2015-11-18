//declare variables
float diam;
PVector loc, vel, acc;

void setup() {
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();

  //set size of canvas
  size(800, 600);

  //initialize variables
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  vel.mult(1);
  acc = PVector.random2D();
  acc.mult(.01);
  diam = 80;
}

void draw() {
  fill(frameCount%360, 70, 80);
  //pick a random acceleration
  acc = PVector.random2D();
  acc.mult(.1);

  //draw background to cover previous frame
  //background(0);

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  //add acceleration to velocity
  vel.add(acc);

  //limit velocity to avoid being unable to overcome large velocity with small acceleration
  vel.limit(5);


  //add velocity to position
  loc.add(vel);

  //wrap the ball's position
  if (loc.x >= width) {
    loc.x = 0;
  } else if (loc.x <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y <= 0) {
    loc.y = height;
  }
}