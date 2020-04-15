public interface Visitor {
  IngredientCalculator visit(Ingredient ingredient);
  void visit(Menu menu);
  void visit(MenuItem menuItem);
}