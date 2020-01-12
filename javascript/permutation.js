function nextPermutation(array) {
  let i = array.length - 1;
  while (i > 0 && array[i - 1] >= array[i]) {
    i--;
  }
  if (i <= 0) {
    return false;
  }
  let j = array.length - 1;
  while (array[j] <= array[i - 1]) {
    j--;
  }
  let temp = array[i - 1];
  array[i - 1] = array[j];
  array[j] = temp;
  j = array.length - 1;
  while (i < j) {
    temp = array[i];
    array[i] = array[j];
    array[j] = temp;
    i++;
    j--;
  }
  return array;
}

const numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

console.log(nextPermutation(numbers));
