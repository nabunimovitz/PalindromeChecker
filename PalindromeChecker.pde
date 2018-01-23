public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noSpaces(word);
  word = noCapitals(word);
  word = noPunctuation(word);
  if(word.equals(reverse(word)))
    return true;
  return false;
}

public String reverse(String str)
{
  String sNew = new String();
  int nLast = str.length()-1;
  for(int i=nLast; i>=0; i--)
  {
    sNew = sNew+str.substring(i,i+1);
  }
  return sNew;
}

public String noSpaces(String sWord)
{
  String s = new String();
  for(int i=0; i<sWord.length(); i++)
  {
    if(sWord.substring(i, i+1).equals(" "))
    { }
    else
      s = s + sWord.substring(i, i+1);  
  }
  return s;
}

public String noCapitals(String sWord)
{
  return sWord.toLowerCase();
}

public String noPunctuation(String sWord)
{
  String s = new String();
  for(int i=0; i<sWord.length(); i++)
  {
    boolean b = Character.isLetter(sWord.charAt(i));
    if(b==true)
    {
      s = s + sWord.charAt(i); 
    }
  }
  return s;
}
