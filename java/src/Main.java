import java.util.List;

public class Main {
  public static void main(String[] args) {
    HealthElement[] healthElements = {new Ingredient(),
      new Menu(), new MenuItem()};
    MenuVisitor visitor = new MenuVisitor();
    for(HealthElement element: healthElements) {
      element.accept(visitor);
    }
  }
}
