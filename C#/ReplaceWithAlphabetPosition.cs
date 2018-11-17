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
    char c = 'a';
    int result = (int)(c-'0');
    Console.WriteLine(result);
    return text;
  }
}