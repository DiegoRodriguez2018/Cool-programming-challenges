// Description:
// Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

// Rules for a smiling face:
// -Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
// -A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
// -Every smiling face must have a smiling mouth that should be marked with either ) or D.
// No additional characters are allowed except for those mentioned.
// Valid smiley face examples:
// :) :D ;-D :~)
// Invalid smiley faces:
// ;( :> :} :] 

// Example cases:

// countSmileys([":)", ";(", ";}", ":-D"]);       // should return 2;
// countSmileys([";D", ":-(", ":-)", ";~)"]);     // should return 3;
// countSmileys([";]", ":[", ";*", ":$", ";-D"]); // should return 1;

// Note: In case of an empty array return 0. You will not be tested with invalid input (input will always be an array). Order of the face (eyes, nose, mouth) elements will always be the same

// Happy coding!

//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

using System;
using System.Text.RegularExpressions;


public static class Kata
{
  static void Main(string[] args){
    string[] test = {":)", ";(", ";}", ":-D"};
    Console.WriteLine(CountSmileys(test));
  }

  public static int CountSmileys(string[] smileys) 
  {

    Regex regex = new Regex(@":)");
    Match match = regex.Match(":)");
      if (match.Success){
        Console.WriteLine(match);        
        Console.WriteLine("yep");
      }
    

    // foreach (string smile in smileys){
    //   Match match = regex.Match(smile);
    //   if (match.Success){
    //     Console.WriteLine(smile);
    //   }
    // }

    return 0;
  }
}