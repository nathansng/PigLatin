import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw() {
}

public int findFirstVowel(String sWord) {
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1

	String [] vowels = {"a", "e", "i", "o", "u"};

	for (int i = 0; i < sWord.length(), i ++) {
		for (int j = 0; j < vowels.length; j ++) {
			if (sWord.substring(i, i + 1).equals(vowels[j])) {
				return i;
			}
		}
	}


	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
