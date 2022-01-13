public class Pheromone {
  private int strength;
  
  public void evaporate(double decayFactor) {
   this.strength /= decayFactor; 
  }
}
