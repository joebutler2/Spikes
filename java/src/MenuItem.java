import java.util.List;

class MenuItem implements HealthElement {
  public List<Ingredient> ingredients;

  @Override
  public void accept(Visitor visitor) {
    visitor.visit(this);
  }

  @Override
  public Integer getCalories() {
    return 100;
  }
}
