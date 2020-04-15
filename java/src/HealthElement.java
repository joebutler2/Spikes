interface HealthElement {
  void accept(Visitor visitor);

  Integer getCalories();
}