Graph graph;
boolean allowGeneration = true;
ACOSolver ACO;

void setup() {
  size(1280, 720);
  smooth();
  background(18, 18, 18);
  
  //Testing the distance matrix generation
  graph = new Graph(9);
  ACO = new ACOSolver(graph);
  ACO.placeAnts();
}

void draw() {
  background(18, 18, 18);
  
  if (keyPressed && key == ENTER && allowGeneration) {
    println("Regenerating graph");
    graph = new Graph(50);
    allowGeneration = false;
  } else if (!allowGeneration && !keyPressed) {
    println("Generation unblocked");
    allowGeneration = true;
  } 
  if(graph != null) {
   graph.draw(); 
  }
}

void drawPheromoneMatrix() {
  double[][] pheromoneMatrix = ACO.getPheromoneMatrix;
  //Have to go through the code to draw the pheromones here
}
