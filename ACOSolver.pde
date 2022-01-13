public class ACOSolver {
  
  
  //Graph to perform ACO on
  private final Graph graph;
  
  //The number of nodes that the graph contains
  private final int numNodes;
  
  //Matrix for storing pheromone values
  private double[][] pheromoneMatrix;
  
  //Matrix for storing the distance between nodes
  private double[][] distanceMatrix;
  
  public ACOSolver(Graph graph) {
   this.graph = graph; 
   this.numNodes = graph.getCount();
  }
  
  
  //Generate adjacency matrix for the graph
  public void generateDistanceMatrix() {
   this.distanceMatrix = new double[numNodes][numNodes]; 
   ArrayList<Node> nodes = graph.getNodes();
   
   for (int i = 0; i < nodes.size(); i++) {
     for (int j = 0; j < nodes.size(); j++) {
       if (nodes.get(i) != nodes.get(j)) {
         distanceMatrix[i][j] = nodes.get(i).computeDistance(nodes.get(j));
       }
     }
   }
  }
  
  public double[][] getDistanceMatrix() {
   return this.distanceMatrix; 
  }
  
  
}
