// You are given a node that is the beginning of a linked list. This list always contains a tail and a loop.

// Your objective is to determine the length of the loop.

// // Use the `getNext()` method to get the following node.

// node.getNext()
// Note: do NOT mutate the nodes!

// Thanks to shadchnev, I broke all of the methods from the Hash class.

// Don't miss dmitry's article in the discussion after you pass the Kata !!

//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|


import java.util.LinkedList;

public class LoopInspector {

    public int loopSize(Node node) {
        int loop, i = 0, tail = 0;
        boolean flag = false;
        LinkedList list = new LinkedList();

        while (flag==false){
            if (list.contains(node)) flag = true;
            list.add(node);
            node = node.getNext();
        }

        for (i=0;i< list.size();i++ ){
            if (list.get(i)== node) tail = i ;
        }

        loop = list.size()- tail;
        return loop;
    }

}