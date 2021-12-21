public class Graph {
  private ArrayList<Node> nodes;
  private int numNodes;
  
  public Graph(int numNodes) {
    this.numNodes = numNodes;
    int scale = numNodes * 3;
    int numsX[] = new int[(int) WIDTH / scale];
    int numsY[] = new int[(int) HEIGHT / scale];
    int xMax = numsX.length - 1;
    int yMax = numsY.length - 1;
    for (int i = 0; i < numsX.length; i++) {
     numsX[i] = scale + (i * scale);
    }
    for (int i = 0; i < numsY.length; i++) {
     numsY[i] = scale + (i * scale);
    }
    
    int xPose = 0;
    int yPose = 0;
    this.nodes = new ArrayList<Node>();
    for (int i = 0; i < numNodes; i++) {
      int xr = (int) random(0, xMax);
      xPose = numsX[xr];
      numsX[xr] = numsX[xMax];
      numsX[xMax] = xPose;
      xMax--;
      
      int yr = (int) random(0, yMax);
      yPose = numsY[yr];
      numsY[yr] = numsY[yMax];
      numsY[yMax] = yPose;
      yMax--;
      
      this.nodes.add(new Node(xPose, yPose));
    }
    
    
  }
  
  public double getDistance(Node node1, Node node2) {
   return dist(node1.getX(), node1.getY(), node2.getX(), node2.getY());
  }
  
  public void draw() {
    for (Node node: nodes) {
      fill(187, 134, 252);
      ellipse(node.getX(), node.getY(), this.numNodes * 3, this.numNodes * 3);
    }
  }
}
