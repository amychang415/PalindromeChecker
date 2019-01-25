public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
 if (reverse(fix(word)).equalsIgnoreCase(fix(word)))
  {
  return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    str.toLowerCase();
    for (int i = str.length()-1; i>= 0; i=i-1)
    {

        sNew = sNew + str.substring(i,i+1);


    }
    return sNew;
}

public String fix(String str)
{
   String sNew = new String();
    for (int i = 0; i< str.length(); i++)
    {

      if ( !(str.substring(i,i+1).equals(" "))  && !(str.substring(i,i+1).equals("!")) && !(str.substring(i,i+1).equals(",")) && !(str.substring(i,i+1).equals("'")) && !(str.substring(i,i+1).equals(".")))
      {
        sNew = sNew + str.substring(i,i+1);
      }

    }
    
    return sNew;
}



