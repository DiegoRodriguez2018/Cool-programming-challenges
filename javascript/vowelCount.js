function getCount(str) {
var vowelsCount = 0;
arr = str.split("");
arr.forEach(element => {
    if (element=='a' ||element=='e'||element=='i'||element=='o' ||element=='u'){
        vowelsCount += 1;
    }
});        
return vowelsCount;
}

// Other solution:
// function getCount(str) {
// return (str.match(/[aeiou]/ig)).length;
// }

document.write(getCount("abracadabrao"));
