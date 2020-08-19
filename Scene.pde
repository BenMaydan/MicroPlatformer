import interfascia.*;




public class Scene {
  
  private ArrayList<IFButton> buttons = new ArrayList();
  private color bg_color;
  
  public Scene(color bg) {
    bg_color = bg;
  }
  
  public void addButton(IFButton button) {
    buttons.add(button);
    gc.add(button);
  }
  
  public void switchScene() {
    for (IFButton b : buttons)
      gc.remove(b);
  }
  
  public void show() {}
}
