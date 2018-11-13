// My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.

// I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.

// For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99. Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

// Example:
// "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: "100 180 90 56 65 74 68 86 99"

// When two numbers have the same "weight", let us class them as if they were strings and not numbers: 100 is before 180 because its "weight" (1) is less than the one of 180 (9) and 180 is before 90 since, having the same "weight" (9) it comes before as a string.

// All numbers in the list are positive numbers and the list can be empty.

// Notes
// it may happen that the input string have leading, trailing whitespaces and more than a unique whitespace between two consecutive numbers
// Don't modify the input
// For C: The result is freed.


//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

function getWeight(str){
    result = 0;
    array =  str.split('');
    array.forEach(element => {
        result += Number(element);
    });
    return result;
}

function orderWeight(str) {
    array  =  str.split(" ")
    console.log(array);
    weights = [];
    
    array.forEach(element => {
        if (weights.includes(getWeight(element))==false){
            weights.push(getWeight(element));
        }
    });
    console.log(weights);
    array  =  str.split(" ")
    console.log(array);

    array2 = []

    array.forEach(element => {
        array2.push([element,getWeight(element)]);
    });

    array2.sort(function(a, b) {
        return a[1] - b[1];
    });

    
    console.log(array2);
    document.write(array2);
    
    result="";
    array2.forEach(element => {
        result += element[0].toString() + " "
    });

    result = result.slice(0,-1);

    
    return result;    
}


// orderWeight("103 123 4444 99 2000")
//=> "2000 103 123 4444 99"



// orderWeight("56 65 74 100 99 68 86 90 180")
//=> "100 180 90 56 65 74 68 86 99"


orderWeight("1 2 200 4 4 6 6 7 7 27 18 81 9 72 91 425 31064 7920 67407 96488 34608557 71899703")
//=> "1 2 200 4 4 6 6 7 7 18 27 72 81 9 91 425 31064 7920 67407 96488 34608557 71899703"


