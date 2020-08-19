import interfascia.*;




GUIController gc;


Scene scene;
MainMenu mainMenu;
Scene levelEditor;
Scene levelPlayer;
Scene help;
Scene about;
Scene credits;


IFLookAndFeel defaultLook;
IFLookAndFeel greenLook;




public void setup() {
  background(255);
  size(800, 800);
  
  gc = new GUIController(this);
  
  defaultLook = new IFLookAndFeel(this, IFLookAndFeel.DEFAULT);
  greenLook = new IFLookAndFeel(this, IFLookAndFeel.DEFAULT);
  greenLook.baseColor = color(100, 180, 100);
  greenLook.highlightColor = color(70, 135, 70);
  greenLook.activeColor = color(3, 144, 252);
  
  mainMenu = new MainMenu(color(100));
  mainMenu.createButtons();
  scene = mainMenu.setupScene();
  
  levelEditor = new LevelEditor(color(255));
  levelEditor.createButtons();
}


public void setScene(String sceneStr) {
  switch (sceneStr) {
    case "mainMenu":
      switchScene(mainMenu);
      break;
    case "levelEditor":
      switchScene(levelEditor);
      break;
    case "levelPlayer":
      switchScene(levelPlayer);
      break;
    case "help":
      switchScene(help);
      break;
    case "about":
      switchScene(about);
      break;
    case "credits":
      switchScene(credits);
      break;
  }
}

public void switchScene(Scene s) {
  scene.reset();
  scene = s.setupScene();
}


public void draw() {
  scene.show();
}
