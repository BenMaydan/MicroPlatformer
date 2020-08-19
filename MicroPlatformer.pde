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
      scene.resetPreviousButtons();
      scene = mainMenu;
    case "levelEditor":
      scene.resetPreviousButtons();
      scene = levelEditor;
    case "levelPlayer":
      scene.resetPreviousButtons();
      scene = levelPlayer;
    case "help":
      scene.resetPreviousButtons();
      scene = help;
    case "about":
      scene.resetPreviousButtons();
      scene = about;
    case "credits":
      scene.resetPreviousButtons();
      scene = credits;
  }
}


public void draw() {
  scene.show();
}
