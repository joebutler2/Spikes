import java.util.List;

public class Menu implements HealthElement {
  public List<MenuItem> items;

  @Override
  public void accept(Visitor visitor) {
    visitor.visit(this);
  }

  @Override
  public Integer getCalories() {
    return 150;
  }
}