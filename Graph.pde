class Graph {
  private final ArrayList<Node> nodes = new ArrayList<Node>();
  private int count;

  
  Graph(int count) {
    this.count = count;
    while (nodes.size() != count) {
      int x = (int) random(width - 30) + 15;
      int y = (int) random(height - 30) + 15;
      
      boolean safe = true;
      for (Node node : nodes) {
        if (Math.abs(node.x - x) < 10 && Math.abs(node.y - y) < 10) {
          safe = false;
          println("Skipping node at " + new Node(x, y));
          break;
        }
      }
      
      if (safe) {
        Node node = new Node(x, y);
        println("Added node at " + node);
        nodes.add(node);
      }
    }
    
    println("Generated " + count + " nodes:");
    println(nodes);
  }
  
  public int getCount() {
   return this.count; 
  }
  
  public ArrayList<Node> getNodes() {
   return this.nodes; 
  }
  
  public void draw() {
    fill(187, 134, 252);
    for (Node node: nodes) {
      ellipse(node.x, node.y, 10, 10);
    }
  }

}
