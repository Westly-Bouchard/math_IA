public class Node {
  private float x;
  private float y;
  
 Node(int x, int y) {
   this.x = x;
   this.y = y;
 }
 
 Node() {
   this(0, 0); 
 }
 
 public float getX() { return this.x; }
 public float getY() { return this.y; }
 
}
