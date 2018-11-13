// Jaden Smith, the son of Will Smith, is the star of films such as The Karate Kid (2010) and After Earth (2013). Jaden is also known for some of his philosophy that he delivers via Twitter. When writing on Twitter, he is known for almost always capitalizing every word.

// Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.

// Example:

// Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
// Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"
// Note that the Java version expects a return value of null for an empty string or null.

//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

public class JadenCase {
    public static void main(String[] args){
        String test  = new String ("How can mirrors be real if our eyes aren't real");
        System.out.println(toJadenCase(test));
        //should return  "How Can Mirrors Be Real If Our Eyes Aren't Real"
    }

	public static String toJadenCase(String phrase) {
        if (phrase != null){
            char[] arr = phrase.toCharArray();
            int i =0;
            String resultado = "";
            Boolean change = true;
            for (i=0;i<arr.length;i++){
                if (change == true) {
                    resultado = resultado + Character.toUpperCase(arr[i]);
                    change = false;
                }else {
                    if (arr[i]== ' ') change = true;
                    resultado = resultado + arr[i];
                }
            }
            if (resultado != "")    return resultado;
            else return null;
        }else return null;
	}
}