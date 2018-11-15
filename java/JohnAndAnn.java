// John and his wife Ann have decided to go to Codewars.

// On first day Ann will do one kata and John - he wants to know how it is working - 0 kata.

// Let us call a(n) the number of katas done by Ann at day n. We have a(0) = 1 and in the same manner j(0) = 0 (or a(1) = 1 and j(1) = 0 for languages that have arrays with indices beginning at 1).

// They have chosen the following rules:

// On day n the number of katas done by Ann should be n minus the number of katas done by John at day t, t being equal to the number of katas done by Ann herself at day n - 1.

// On day n the number of katas done by John should be n minus the number of katas done by Ann at day t, t being equal to the number of katas done by John himself at day n - 1.

// Whoops! I think they need to lay out a little clearer exactly what there're getting themselves into!

// Could you write:
// 1) two functions ann and john (parameter n) giving the list of the numbers of katas Ann and John should take on the first n days (see first examples below)?
// 2) The total number of katas taken by ann function sum_ann(n) and john function sum_john(n) - on the first n days?
// The functions in 1) are not tested in Fortran and not tested in Shell.

// Examples:
// john(11) -->  [0, 0, 1, 2, 2, 3, 4, 4, 5, 6, 6]
// ann(6) -->  [1, 1, 2, 2, 3, 3]

// sum_john(75) -->  1720
// sum_ann(150) -->  6930
// Shell Note:
// sumJohnAndAnn has two parameters:

// first one : n (number of days, $1)

// second one : which($2) ->

// 1 for getting John's sum

// 2 for getting Ann's sum.

// See "Sample Tests".

// Note:
// Keep an eye on performance.

//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

import java.util.ArrayList;
import java.util.List;

public class Johnann {



    public static class listConstructor {

        long sum_john = 0; 
        long sum_ann =1; 
        long i=0;
        List<Long> J = new ArrayList<Long>();
        List<Long> A = new ArrayList<Long>();

        public  void constructor (long n)     {
            J.add(0l);
            A.add(1l);
            for (i=1; i<n; i++){
                J.add(i - A.get((J.get((int)i - 1).intValue())));
                sum_john += i - A.get((J.get((int)i - 1).intValue()));
                A.add(i - J.get((A.get((int)i - 1).intValue())));
                sum_ann += i - J.get((A.get((int)i - 1).intValue()));

            }
        }

        public List<Long> getJ() {
            return J;
        }

        public List<Long> getA() {
            return A;
        }

        public long getSum_john() {
            return sum_john;
        }

        public long getSum_ann() {
            return sum_ann;
        }
    }


    public static List<Long> john(long n) {
        // your code
        listConstructor lista = new listConstructor();
        lista.constructor(n);
        return  lista.getJ();

    }
    public static List<Long> ann(long n) {
        // your code
        listConstructor lista = new listConstructor();
        lista.constructor(n);
        return  lista.getA();

    }


    public static long sumJohn(long n) {
        // your code
        listConstructor lista = new listConstructor();
        lista.constructor(n);
        return  lista.sum_john;
    }
    public static long sumAnn(long n) {
        // your code
        listConstructor lista = new listConstructor();
        lista.constructor(n);
        return  lista.sum_ann;

    }
}