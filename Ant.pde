public class Ant {
  private ArrayList<Node> visitedNodes;

  public void addNode(Node node) {
    this.visitedNodes.add(node);
  }

  public void addStartingNode(Node node) {
    this.visitedNodes = new ArrayList<Node>();
    visitedNodes.add(node);
  }
  
  public double computeCurrentLength() {
    int sum = 0;
    Node currentNode = null;
    for (int i = 1; i < visitedNodes.size(); i++) {
      sum += visitedNodes.get(i).computeDistance(visitedNodes.get(i-1));
    }
    return sum;
    
  }
}
