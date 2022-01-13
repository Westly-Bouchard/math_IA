Graph graph;
boolean allowGeneration = true;

void setup() {
  size(1280, 720);
  smooth();
  background(18, 18, 18);
}

void draw() {
  background(18, 18, 18);
  
  if (keyPressed && key == ENTER && allowGeneration) {
    println("Regenerating graph");
    graph = new Graph(20);
    allowGeneration = false;
  } else if (!allowGeneration && !keyPressed) {
    println("Generation unblocked");
    allowGeneration = true;
  } 
  if(graph != null) {
   graph.draw(); 
  }
}
