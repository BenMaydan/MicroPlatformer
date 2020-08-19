public class MainMenu extends Scene {
  
  IFButton levelEditor;
  IFButton levelPlayer;
  IFButton help;
  IFButton about;
  IFButton credits;
  
  public MainMenu(color bg_color) {
    super(bg_color);
  }
  
  public void initButtons() {
    levelEditor = new IFButton("Level Editor", 10, 10);
    levelPlayer = new IFButton("Level Player", 10, 40);
    help = new IFButton("Help", 10, 70);
    about = new IFButton("About", 10, 100);
    credits = new IFButton("Credits", 10, 130);
    
    levelEditor.addActionListener(this);
    levelPlayer.addActionListener(this);
    help.addActionListener(this);
    about.addActionListener(this);
    credits.addActionListener(this);
    
    gc.setLookAndFeel(greenLook);
    mainMenu.addButton(levelEditor);
    mainMenu.addButton(levelPlayer);
    mainMenu.addButton(help);
    mainMenu.addButton(about);
    mainMenu.addButton(credits);
  }
  
  public void actionPerformed(GUIEvent e) {
    if (e.getSource() == levelEditor) {
      println("Level Editor was clicked");
      setScene("levelEditor");
    }
    else if (e.getSource() == levelPlayer) {
      println("Level Player was clicked");
    }
  }
  
  public void show() {
    background(super.bg_color);
  }
  
  public String toString() {
    return "mainMenu";
  }
}
