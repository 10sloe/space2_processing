public class Kugel extends Spielobjekt
{
  // Attribute

  boolean sichtbar;

  // Konstruktor
  Kugel(float x_, float y_)
  {      
    super(x_,y_);       
    breite = 6;
    hoehe = 6;

    sichtbar = false;
  }

  // Methoden
  void update()
  {
    y = y + vy;
  }

  void sichtbarMachen()
  {
    sichtbar = true;
  }

  void unsichtbarMachen()
  {
    sichtbar = false;
  }

  void zeichnen()
  {
    if (sichtbar)
    {
      fill(255, 255, 0); 
      ellipse(x, y, breite, hoehe);
    }
  }
}
