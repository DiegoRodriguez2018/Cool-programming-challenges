// Welcome.

// In this kata you are required to, given a string, replace every letter with its position in the alphabet.

// If anything in the text isn't a letter, ignore it and don't return it.

// "a" = 1, "b" = 2, etc.

// Example
// alphabet_position("The sunset sets at twelve o' clock.")
// Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

// //    _____           _           _     _                 
// //    / ____|         | |         | |   (_)                
// //   | (___     ___   | |  _   _  | |_   _    ___    _ __  
// //    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
// //    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
// //   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

using System;

public static class Kata
{
  static void Main(string[] args){
    //Test
    AlphabetPosition("The sunset sets at twelve o' clock.");
    // Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" as string.
  }

  public static string AlphabetPosition(string text){
    // First we convert the string to lower case:
    string lowerCase = text.ToLower();

    // Then we convert to a char array:
    char[] charArr = lowerCase.ToCharArray();
    Console.WriteLine(charArr);

    //Now we determine the position in the alphabet by substracting backtick (`)and cohercing to int. For example, assuming the chararcter is 'a', it will have an ASCII code of 97, and backtick an ASCII code of 96, therefore 97-96 = 1.
    string result = "";

    foreach (char c in charArr){
        int position = (int)(c-'`');
        if (position>0 && position<27){
            result += position + " ";
        }
    }
    //Finally we remove the last white space. 
    if (result.Length>0){
        result = result.Remove(result.Length-1);
    }

    Console.WriteLine(result);
    return result;
  }
}

// Favourite solution from CodeWars:

// using System.Linq;
// public static class Kata
// {
//   public static string AlphabetPosition(string text)
//   {
//      return string.Join(" ", text.ToLower().Where(char.IsLetter).Select(x => x - 'a'+1));
//   }
// }