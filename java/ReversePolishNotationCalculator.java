// Your job is to create a calculator which evaluates expressions in Reverse Polish notation.

// For example expression 5 1 2 + 4 * + 3 - (which is equivalent to 5 + ((1 + 2) * 4) - 3 in normal notation) should evaluate to 14.

// For your convenience, the input is formatted such that a space is provided between every token.

// Empty expression should evaluate to 0.

// Valid operations are +, -, *, /.

// You may assume that there won't be exceptional situations (like stack underflow or division by zero).


//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|


import java.util.Stack;

public class Calc {
    public static double evaluate(String expr) {
        Double uno;
        String [] expresion = expr.split(" ");
        if(expr.equals("")){
            return 0;
        }
        Stack<Double> list = new Stack<Double>();

        for(String s: expresion){
            switch(s){
                case "+":
                    list.push(list.pop()+list.pop());
                    break;
                case "-":
                    uno = list.pop();
                    list.push(list.pop() - uno);
                    break;
                case "*":
                    list.push(list.pop()*list.pop());
                    break;
                case "/":
                    uno = list.pop();
                    list.push(list.pop() / uno);
                    break;
                default:
                    list.push(Double.parseDouble(s));
                    break;
            }
        }
        return list.pop();
    }
}