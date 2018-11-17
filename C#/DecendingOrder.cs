// Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

// Examples:
// Input: 21445 Output: 54421

// Input: 145263 Output: 654321

// Input: 1254859723 Output: 9875543221


//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|



using System;

public static class Kata
{
  static void Main(string[] args){
    //Test
    Console.WriteLine(DescendingOrder(45621));
    // Should return 65421
  }

  public static int DescendingOrder(int num)
  {
    // Bust a move right here
    string str = num.ToString();
    char[] charArr = str.ToCharArray();
    Array.Sort(charArr);
    Array.Reverse(charArr);
    string str2 = new String(charArr);
    int result = int.Parse(str2);
    return result;
  }
  
}


// Favourite solution from Codewars:

// using System;
// using System.Linq;

// public static class Kata
// {
//   public static int DescendingOrder(int num)
//   {
//     return int.Parse(string.Concat(num.ToString().OrderByDescending(x => x)));
//   }
// }
