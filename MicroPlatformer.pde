import interfascia.*;




GUIController gc;


Scene scene;
MainMenu mainMenu;
Scene levelPlayer;
Scene levelEditor;
Scene help;
Scene about;
Scene credits;


IFLookAndFeel greenLook;




public void setup() {
  background(255);
  size(800, 800);
  
  gc = new GUIController(this);
  
  //defaultLook = new IFLookAndFeel(this, IFLookAndFeel.DEFAULT);
  greenLook = new IFLookAndFeel(this, IFLookAndFeel.DEFAULT);
  greenLook.baseColor = color(100, 180, 100);
  greenLook.highlightColor = color(70, 135, 70);
  greenLook.activeColor = color(3, 144, 252);
  
  mainMenu = new MainMenu(color(100));
  mainMenu.initButtons();
  scene = mainMenu;
}


public void setScene(String sceneStr) {
  switch (sceneStr) {
    case "mainMenu":
      scene.switchScene();
      scene = mainMenu;
    case "levelEditor":
      scene.switchScene();
      scene = levelEditor;
    case "levelPlayer":
      scene.switchScene();
      scene = levelPlayer;
    case "help":
      scene.switchScene();
      scene = help;
    case "about":
      scene.switchScene();
      scene = about;
    case "credits":
      scene.switchScene();
      scene = credits;
  }
}


public void draw() {
  scene.show();
}
