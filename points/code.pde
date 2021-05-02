var x, y;

function setup() {
  createCanvas(displayWidth, displayHeight - 5);
}

function draw() {
  x = 200 * cos(millis() / 2000);
  y = 200 * sin(millis() / 2000);
  
  background((128 * sin(millis() / 10000)) + 127);
  
  for (i = -5; i < (displayWidth / 30) + 5; i++) {
    for (j = -5; j < (displayHeight / 30); j++) {
      stroke(50);
      fill(50);
      ellipse((30*i) + ((x - 300)/3), (30*j) + ((y - 300)/3), 3, 3);
    }
  }
  
  for (i = -5; i < (displayWidth / 40) + 5; i++) {
    for (j = -5; j < (displayHeight / 30); j++) {
      stroke(150);
      fill(150);
      ellipse((40*i) + ((x - 295)/5), (40*j) + ((y - 295)/5), 3, 3);
    }
  }
  
  for (i = -5; i < (displayWidth / 50) + 5; i++) {
    for (j = -5; j < (displayHeight / 50); j++) {
      stroke(0);
      fill(0);
      ellipse((50*i) + ((x - 305)/2), (50*j) + ((y - 305)/2), 3, 3);
    }
  }
}
