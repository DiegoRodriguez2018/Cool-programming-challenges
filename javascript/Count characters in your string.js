/*The main idea is to count all the occuring characters(UTF-8) in string.
If you have string like this ```aba``` then the result should be ```{ 'a': 2, 'b': 1 }```
What if the string is empty ? 
Then the result should be empty object literal ```{ } ```
**For C#**: Use a ``Dictionary`` for this kata!*/

function count(str) {
  if (str === "") return {};
  const result = {};
  for (let index = 0; index < str.split("").length; index++) {
    const char = str.split("")[index];
    if (!result[char]) {
      result[char] = 1;
    } else {
      result[char] += 1;
    }
  }
  return result;
}

console.log(count("aba"));

//   { a: 2, b: 1 }
