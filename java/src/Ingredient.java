class Ingredient implements HealthElement {
  @Override
  public void accept(Visitor visitor) {
    visitor.visit(this);
  }

  @Override
  public Integer getCalories() {
    return 50;
  }
}