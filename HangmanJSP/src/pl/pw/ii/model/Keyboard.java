package pl.pw.ii.model;

import java.util.ArrayList;
import java.util.List;

public class Keyboard {
	private List<String> letters = new ArrayList<>();

	public Keyboard() {

	}

	public List<String> getLetters() {
		return letters;
	}

	public void setLetters(List<String> letters) {
		this.letters = letters;
	}

}
