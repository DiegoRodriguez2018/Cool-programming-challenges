// Given an array with exactly 5 strings "a", "b" or "c" (chars in Java, characters in Fortran), check if the array contains three and two of the same values.

// Examples
// ["a", "a", "a", "b", "b"] ==> true  // 3x "a" and 2x "b"
// ["a", "b", "c", "b", "c"] ==> false // 1x "a", 2x "b" and 2x "c"
// ["a", "a", "a", "a", "a"] ==> false // 5x "a"

//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

public class CheckThreeAndTwo {
    public static void main(String[] args){
        System.out.println(checkThreeAndTwo(new char [] {'a', 'a', 'a', 'b', 'b'}));
        // Should return true

        System.out.println(checkThreeAndTwo(new char [] {'a', 'b', 'c', 'b', 'c'}));
        // Should return false
    }

    public static boolean checkThreeAndTwo(char[] chars) {
        int a=0,b=0,c=0,i = 0;
        boolean result=false;
        for (i=0;i<chars.length;i++){
            switch (chars[i]){
                case 'a': a = a+1 ;break;
                case 'b': b = b+1;break;
                case 'c': c = c+1;break;
            }
        }
        if (a!=2 && b!=2 && c!=2) result= false;
        else{
            if (a==2) {
                if (b == 3 || c == 3) result= true;
                else result= false;
            }
            if (b==2) {
                if (a == 3 || c == 3) result= true;
                else result= false;
            }
            if (c==2) {
                if (b == 3 || a == 3) result= true;
                else result= false;
            }
        }
    return result;
    }
}