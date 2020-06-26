public class Schiff extends Spielobjekt
{
  //Attribute
  PImage img;

  //Konstruktor
  public Schiff(float x_, float y_)
  {
    x = x_;
    y = y_;
    vx = 0;
    vy = 0;
    breite = 48;
    hoehe = 48;

    img = loadImage("schiff.png");
  }

  //Methoden

  

  public void nachRechts()
  {
    vx = 3;
  }

  public void nachLinks()
  {
    vx = -3;
  }

  public void update()
  {
    x = x + vx;
  }

  public void stoppen()
  {
    vx = 0;
  }

  void zeichnen()
  {
    image(img, x, y, breite, hoehe);
  }
}
