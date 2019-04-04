// Given a positive number n > 1 find the prime factor decomposition of n. The result will be a string with the following form :

//  "(p1**n1)(p2**n2)...(pk**nk)"
// with the p(i) in increasing order and n(i) empty if n(i) is 1.

// Example: n = 86240 should return "(2**5)(5)(7**2)(11)"

var primes = new Set();

function getNextPrime(num) {
  // After 3, note we start our loop with num + 2 to avoid even numbers (by definition not prime)
  let result = num + 2;
  if (primes.has(result)) {
    return result;
  } else {
    while (true) {
      // increasing by 2 to avoid even numbers, and checking numbers until sqrt(result).
      for (let i = 3; i < Math.sqrt(result); i = i + 2) {
        if (result % i === 0) {
          result += 2;
          break;
        }
      }
      primes.add(result);
      return result;
    }
  }
}

function primeFactors(n) {
  const list = {};
  let num = n;
  let divisor = 2; // start at 2
  while (num !== 1) {
    while (num % divisor !== 0) {
      divisor = divisor === 2 ? 3 : getNextPrime(divisor);
    }
    if (list[divisor]) {
      list[divisor] += 1;
    } else {
      list[divisor] = 1;
    }
    num = num / divisor;
  }

  let result = "";
  const keys = Object.keys(list);
  for (let index = 0; index < keys.length; index++) {
    const key = keys[index];
    const value = list[key];
    result += value === 1 ? `(${key})` : `(${key}**${list[key]})`;
  }
  return result;
}

// Nice solutions:

// const primeFactors = n => {
//   if (n < 2) return `(${n})`;
//   let factors = '';
//   for ( let i = 2; i <= n; i++) {
//     let count = 0;
//     while ( n%i === 0 ) {
//       count++;
//       n /= i;
//     }
//     if (count) {
//       factors += `(${i}`;
//       if (count > 1) factors += `**${count}`;
//       factors += `)`;
//     }
//   }
//   return factors;
// }

// function primeFactors(n){
//   for(var s = '', d = 2;n>1;d++) {
//       for (var k = 0;n%d == 0;k++, n/=d);
//       s += k ? (k==1 ? `(${d})` : `(${d}**${k})`) : '';
//   }
// return s
// }

// function primeFactors(n){
//   for (var i=2, res="", f; i <= n; i++) {
//     f=0;
//     while (n%i == 0) { f++; n/=i }
//     res += f ? "(" + ( f>1 ? i+"**"+f  : i ) +")" : ""
//   }
//   return res || "("+n+")"
// }
