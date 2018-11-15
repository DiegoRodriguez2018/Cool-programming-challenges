// The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

// Examples:

// "din" => "((("

// "recede" => "()()()"

// "Success" => ")())())"

// "(( @" => "))(("

//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|


import java.util.ArrayList;
import java.util.List;

public class DuplicateEncoder {
    static String encode(String word){
        char[] palabra = word.toLowerCase().toCharArray();
        String resultado= "";
        int i,n,j;
        boolean repeated = false;
        n=0;


        for (i=0;i<palabra.length;i++){
             for (j=0;j<palabra.length;j++){
                 if (palabra[i]==palabra[j]){
                     n=n+1;
                     if (n>1) repeated =true;
                 }

             }

            if (repeated == false) resultado += "(";
             else resultado += ")";

             //restarting flags
             repeated = false;
             n = 0;
        }


        return resultado;
    }
}