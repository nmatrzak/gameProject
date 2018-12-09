package pl.pw.ii.model;

public class Phrase {

	private String phrase = "Ala ma kota";

	public Phrase() {
	}

	public String getPhrase() {
		return phrase;
	}

	public void setPhrase(String phrase) {
		this.phrase = phrase;
	}

	public String hidePhrase() {
		String phraseTemp = "";
		for (int i = 0; i < phrase.length(); i++) {
			if (phrase.charAt(i) == ' ')
				phraseTemp = phraseTemp + "  ";
			else
				phraseTemp = phraseTemp + "-";
		}
		return phraseTemp;
	}
}
