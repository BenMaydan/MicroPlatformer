import interfascia.*;




public class Scene {
  
  private ArrayList<IFButton> buttons = new ArrayList();
  private color bg_color;
  
  public Scene(color bg) {
    bg_color = bg;
  }
  
  public void createButtons() {
    
  }
  
  public void addButton(IFButton button) {
    gc.add(button);
    buttons.add(button);
  }
  
  public Scene setupScene() {
    return this;
  }
  
  public void reset() {
    for (int i = 0; i < buttons.size(); i++)
      gc.remove((IFButton)buttons.remove(i));
  }
  
  public void actionPerformed(GUIEvent e) {
    
  }
  
  public void show() {
    background(bg_color);
  }
  
  public String toString() {
    return "Default Scene";
  }
  
}
