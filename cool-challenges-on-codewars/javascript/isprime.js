// Is Prime
// Define a function isPrime/is_prime() that takes one integer argument and returns true/True or false/False depending on if the integer is a prime.

// Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

// Example
// bool isPrime(5) = return true

//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|



function isPrime(num) {
    if (num == 0 || num == 1 || num < 0) {
        return false;
    }

    result = true;
    for (i = 2; i < num; i++) {
        if (num % i == 0) {
            result = false;
        }
    }
    return result;
}

document.write(isPrime(7));
document.write(isPrime(8));

// Favourite solution:

// function isPrime(num) {
//     for (var i = 2; i < num; i++) {
//         if (num % i == 0) {
//             return false;
//         }
//     }
//     return num >= 2;
// }



