public class ACOSolver {
  
  
  //Graph to perform ACO on
  private final Graph graph;
  
  //The number of nodes that the graph contains
  private final int numNodes;

  private ArrayList<Ant> ants;

  private final double evaporationConstant;
  private final double alpha;
  private final double beta;
  
  //Matrix for storing pheromone values
  // private Pheromone[][] peromoneMatrix;
  private double[][] pheromoneMatrix;
  
  //Matrix for storing the distance between nodes
  private double[][] distanceMatrix;
  
  public ACOSolver(Graph graph, double alpha, double beta, double evaporationConstant) {
    this.alpha = alpha;
    this.beta = beta;
    this.evaporationConstant = evaporationConstant;
    this.graph = graph; 
    this.numNodes = graph.getCount();
    this.ants = new ArrayList<Ant>(numNodes / 3);
  }

  private void placeAnts() {
    ArrayList<Integer> nodesPlaced = new ArrayList<Integer>();
    for (Ant ant : this.ants) {
      int nodeIndex = (int)random(numNodes);
      while (nodesPlaced.indexOf(nodeIndex) != -1) {
        nodeIndex = (int)random(numNodes);
      }
      nodesPlaced.add(nodeIndex);
      println("Added noode" + nodeIndex + "to an ant");
      ant.addStartingNode(graph.getNodes().get(nodeIndex));
    }
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
  
  public void solve() {
    
  }

  public double[][] getPheromoneMatrix() {
    return this.pheromoneMatrix;
  }

  public double[][] getDistanceMatrix() {
   return this.distanceMatrix; 
  }
  
  
}
