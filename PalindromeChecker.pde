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
  String s = new String();
  int Last = word.length()-1;
  for(int i=Last; i>=0; i--)
  {
    s = s+word.substring(i, i+1);
  }

  if(word.equals(s))
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


