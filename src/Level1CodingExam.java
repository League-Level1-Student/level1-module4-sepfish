import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Level1CodingExam implements ActionListener {	
	Color yellowColor = new Color(221, 204, 85);
	Color redColor = new Color(187, 17, 51);
	Color blueButton = new Color(51, 170, 204);
	Color greenColorButton = new Color(0, 170, 17);
	JButton yellowColorButton = new JButton();
	JButton redColorButton = new JButton();
	JButton blueButtonButton = new JButton();
	JButton greenColorButtonButton = new JButton();
	
		public static void main(String[] args) {
			Level1CodingExam hi = new Level1CodingExam();
			hi.setUp();
		}
		void setUp() {
			JFrame frame = new JFrame();
			JPanel panel = new JPanel();
			
			yellowColorButton.setOpaque(true);
			yellowColorButton.setBackground(this.yellowColor);
			yellowColorButton.addActionListener(this);
			redColorButton.setOpaque(true);
			redColorButton.addActionListener(this);
			redColorButton.setBackground(this.redColor);
			blueButtonButton.setOpaque(true);
			blueButtonButton.setBackground(this.blueButton);
			blueButtonButton.addActionListener(this);
			greenColorButtonButton.setOpaque(true);
			greenColorButtonButton.setBackground(this.greenColorButton);
			greenColorButtonButton.addActionListener(this);
			panel.add(yellowColorButton);
			panel.add(redColorButton);
			panel.add(blueButtonButton);
			panel.add(greenColorButtonButton);
			frame.add(panel);
			frame.setTitle("Color Teacher");
			frame.setVisible(true);
			frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			frame.pack();
		}
		
		
		void speak(String words) {
			try {
				Runtime.getRuntime().exec("say " + words);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		@Override
		public void actionPerformed(ActionEvent e) {
			JButton whichOne = (JButton) e.getSource();
			if (whichOne == yellowColorButton) {
				speak("yellow");
			} else
			if (whichOne == redColorButton) {
				speak("red");
			} else
			if (whichOne == blueButtonButton) {
				speak("blue");
			} else
			if (whichOne == greenColorButtonButton) {
				speak("green");
			}
		}
		
}
		
