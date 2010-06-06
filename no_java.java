// Código Original em...
// http://www.phy.ohiou.edu/~mousseau/phy303/scientific/all_33.html

/* This program creates a new frame and fills it with a red 
   rectangle and a few more things. It uses the Swing components.
*/
import javax.swing.*;
import java.awt.geom.*;
import java.awt.*;
import java.awt.event.*;

// JPanel is a graphic container, by creating an extension of this
// class, TestJPanel shares all the properties and methods of JPanel.
public class TestJPanel extends JPanel {

  public static void main(String args[]) {

    // Create a frame and position it on the screen
    JFrame f = new JFrame();
    f.setSize(300,250);

    // Instantiate a new occurence of TestJPanel
    TestJPanel tj = new TestJPanel();

    // Add the JPanel to the frame
    f.getContentPane().add(tj,BorderLayout.CENTER);

    f.setVisible(true);
    f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  }

  // By default, the paintComponent method is called in a JPanel
  public void paintComponent( Graphics g) {

    // To preserve compatibility with previous version of Java,
    // the paint method reads in a Graphics object. Since Swing
    // requires Graphics2D, we must cast it.
    Graphics2D g2 = (Graphics2D) g;

    // Obtain the dimensions of the Frame
    Dimension size = this.getSize();

    // Create a red rectangle
    g2.setColor(Color.red);
    Rectangle2D rc = new Rectangle2D.Double(10,10,(size.width-20),(size.height-20));
    g2.fill(rc);

    // Create a white line
    g2.setColor(Color.white);
    Line2D line = new Line2D.Double(20.,20.,size.width,size.height);
    g2.draw(line);

    // Create a string 
    g2.drawString("This is a test!",100,150);
  }
}