TimeToMoveTimer timer1;

void setup() {
  size(300, 200);
  timer1 = new TimeToMoveTimer();
  surface.setAlwaysOnTop(false);
}

void draw() {

  backgroundAndLine(); // took the line out
  timer1.run();
}

void mouseClicked() {
  timer1.reset();
  surface.setAlwaysOnTop(false);
}