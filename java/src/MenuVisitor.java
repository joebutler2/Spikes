public class MenuVisitor implements Visitor {
  @Override
  public void visit(Ingredient ingredient) {
    System.out.format("This is an ingredient with this total Calories %d\n", ingredient.getCalories());
  }

  @Override
  public void visit(Menu menu) {
    System.out.format("This is a menu with this total Calories %d\n", menu.getCalories());
  }

  @Override
  public void visit(MenuItem menuItem) {
    System.out.format("This is a menu item with this total Calories %d\n", menuItem.getCalories());
  }
}