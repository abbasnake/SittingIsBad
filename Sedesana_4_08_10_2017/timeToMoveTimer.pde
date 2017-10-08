class TimeToMoveTimer {
  int minInt = 0;
  int secInt = 0;
  String totalTimeString = "";

  TimeToMoveTimer() {
  }

  void run() {
    totalTimeString = str(minInt);
    totalTimeString += ":";
    totalTimeString += str(secInt);

    if (minInt>=45) {
      background(random(255), 0, 0);
      surface.setAlwaysOnTop(true);
    }

    textAlign(CENTER);
    textSize(60);
    fill(0);
    text(totalTimeString, width/2, height/2);

    if (frameCount%60==0) {
      secInt++;
    }
    if (secInt==60) {
      secInt = 0;
      minInt++;
    }
  }

  void reset() {
    minInt = 0;
    secInt = 0;
  }
}