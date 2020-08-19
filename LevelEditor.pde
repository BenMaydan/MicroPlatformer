public class LevelEditor extends Scene {
  
  private IFButton addPlatform;
  private IFButton deletePlatform;
  private IFButton addVoid;
  private IFButton deleteVoid;
  private String mode = "";
  
  public LevelEditor(color bg) {
    super(bg);
  }
  
  public void createButtons() {
    addPlatform = new IFButton("Add Platform", 10, 10);
    deletePlatform = new IFButton("Delete Platform", 10, 40);
    addVoid = new IFButton("Add Void", 10, 70);
    deleteVoid = new IFButton("Delete Void", 10, 100);
    
    addPlatform.addActionListener(this);
    deletePlatform.addActionListener(this);
    addVoid.addActionListener(this);
    deleteVoid.addActionListener(this);
  }
  
  public Scene setupScene() {
    gc.setLookAndFeel(greenLook);
    addButton(addPlatform);
    addButton(deletePlatform);
    addButton(addVoid);
    addButton(deleteVoid);
    return this;
  }
  
  public void actionPerformed(GUIEvent e) {
    if (e.getSource() == addPlatform) {
      println("Add Platform was clicked");
      mode = "aplatform";
    }
    else if (e.getSource() == deletePlatform) {
      println("Delete Platform was clicked");
      mode = "dplatform";
    }
    else if (e.getSource() == addVoid) {
      println("Add Void was clicked");
      mode = "avoid";
    }
    else if (e.getSource() == deleteVoid) {
      println("Delete Void was clicked");
      mode = "dvoid";
    }
  }
  
  public void show() {
    background(super.bg_color);
  }
  
  public String toString() {
    return "levelEditor";
  }
  
}
