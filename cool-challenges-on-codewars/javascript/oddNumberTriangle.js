// Given the triangle of consecutive odd numbers:

//              1
//           3     5
//        7     9    11
//    13    15    17    19
// 21    23    25    27    29
// ...
// Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

// rowSumOddNumbers(1); // 1
// rowSumOddNumbers(2); // 3 + 5 = 8


function rowSumOddNumbers(n) {
    arr = []
    previousNumbers = 0
    for (i=(n-1); i>=1; i--){
        previousNumbers += i;
    }
    // // Notice that (previousNumbers*2 + 1)  is the first number in our row. 
    rowStart =  previousNumbers*2 + 1;
    // Now we push and add 2 n-1 times
    arr.push (rowStart);
    nextValue = rowStart;
    for (i=n-1; i>=1; i--){
        nextValue += 2;
        arr.push(nextValue);
    }
    sum = 0;
    arr.forEach(element => {
        sum += element;
    });
    return sum;
}

rowSumOddNumbers(5);
//125


// Favourite solution:
// function rowSumOddNumbers(n) {
//     return Math.pow(n, 3);
//   }