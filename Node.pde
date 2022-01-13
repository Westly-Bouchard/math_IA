class Node {
  final int x;
  final int y;
  
  public Node(int x, int y) {
    this.x = x;
    this. y = y;
  }
  
  @Override
  public String toString() {
    return "(" + x + ", " + y + ")";
  }
}
