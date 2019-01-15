public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	int x = -1;
  	for(int i=0; i<sWord.length();i++){
  		if(sWord.charAt(i)==('a')||sWord.charAt(i)==('e')||sWord.charAt(i)==('i')||sWord.charAt(i)==('o')||sWord.charAt(i)==('u')){
  			x = i;
  			break;
  		}
  	}
	return x;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{  
		return sWord + "ay";
	}
	if(findFirstVowel(sWord)==0){
		return sWord + "way";
	}
	if(sWord.substring(0,2).equals("qu")){
		return sWord.substring(2)+sWord.substring(0,2) + "ay";
	}
	else if(findFirstVowel(sWord)>-1){
		return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay";
	}
	else
	{
		return "ERROR!";
	}
}
