class Node {
  final int x;
  final int y;
  
  public Node(int x, int y) {
    this.x = x;
    this. y = y;
  }
  
  public double computeDistance(Node other) {
   return Math.sqrt(Math.pow(this.x - other.x, 2)+Math.pow(this.y- other.y, 2)); 
  }
  
  @Override
  public String toString() {
    return "(" + x + ", " + y + ")";
  }
}
