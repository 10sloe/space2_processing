public class Alien extends Spielobjekt
{
    //Attribute
    PImage img;

    int zaehler; // zählt die Schritte nach links und die Schritte nach rechts

    //Konstruktor
    public Alien(float x_,float y_)
    {
        x = x_;
        y = y_;
        vx = 0.4;
        vy = 0;
        breite = 48;
        hoehe = 48;

        img = loadImage("alien1.png");
        zaehler = 0;
    }
    //Methoden

    public void update()
    {
        zaehler++;
        if (zaehler > 300) // Nach 300 Einheiten
        {
            zaehler = 0;
            vx = -vx;      // ändert das Alien die Richtung
            y = y + 10;    // und fliegt ein bisschen tiefer
        }
        x = x + vx;
    }

    void zeichnen()
    {
        image(img,x, y,breite,hoehe);
    }

}