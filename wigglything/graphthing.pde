float[] the_array = new float[20];

void setup() {
  size(600, 600);
  stroke(255);
}

void draw() {
  background(0);
  
  for (int i = 0; i < (the_array.length - 1); i++) {
    if (i < 10) {
      line(100 + (40 * i), 500 - the_array[i], 100 + (40 * (i + 1)), 500 - the_array[i+1]);
      ellipse(100 + (40 * i), 500 - the_array[i], 3, 3);
    }
    
    the_array[i] = the_array[i+1];
    
    if (100 < mouseY && mouseY < 500) {
      the_array[the_array.length - 1] = 500 - mouseY;
    }
    
    ellipse(mouseX, mouseY, 8, 8);
  }
}
