Graph graph;
boolean resetWasPressed = false;

final int WIDTH = 1280;
final int HEIGHT = 720;
//Oooo, wow a comment
void setup() {
  size(1280, 720);
  smooth();
  //noStroke();
  
  background(18,18,18);
  
  graph = new Graph(10);
}

void draw() {
  background(256, 256, 256);  
  if (keyPressed && key == ENTER && !resetWasPressed) {
    resetWasPressed = true;
    graph = new Graph(10);
  } else {
    resetWasPressed = false;
  }
  graph.draw();
}
