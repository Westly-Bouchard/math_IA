Graph graph;
boolean allowGeneration = true;

void setup() {
  size(1280, 720);
  smooth();
  background(18, 18, 18);
  
  //Testing the distance matrix generation
  graph = new Graph(3);
  ACOSolver aco = new ACOSolver(graph);
  aco.generateDistanceMatrix();
  double[][] distanceMatrix = aco.getDistanceMatrix();
  for (int i = 0; i < distanceMatrix.length; i++) {
   for (int j = 0; j < distanceMatrix.length; j++) {
    print(distanceMatrix[i][j] + " "); 
   }
   println();
  }
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
