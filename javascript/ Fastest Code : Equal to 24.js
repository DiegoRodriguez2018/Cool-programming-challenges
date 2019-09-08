// Fastest Code : Equal to 24
// This is the Performance version of [simple version](http://www.codewars.com/kata/574be65a974b95eaf40008da). If your code runs more than 7000ms, please optimize your code or try the [simple version](http://www.codewars.com/kata/574be65a974b95eaf40008da)
// # Task
// A game I played when I was young: Draw 4 cards from playing cards, use ```+ - * / and ()``` to make the final results equal to 24.
// You will coding in function ```equalTo24```. Function accept 4 parameters ```a b c d```(4 numbers), value range is 1-100.
// The result is a string such as ```"2*2*2*3"``` ,```(4+2)*(5-1)```; If it is not possible to calculate the 24, please return `"It's not possible!"`
// All four cards are to be used, only use three or two cards are incorrect; Use a card twice or more is incorrect too.
// You just need to return one correct solution, don't need to find out all the possibilities.
// The diffrent between "challenge version" and "simple version":
// ```
// 1) a,b,c,d range:  In "challenge version" it is 1-100, 
//                    In "simple version" it is 1-13.
// 2) "challenge version" has 1000 random testcases,
//    "simple version" only has 20 random testcases.
// ```
// # Some examples:
// ```javascript
// equalTo24(1,2,3,4) //can return "(1+3)*(2+4)" or "1*2*3*4"
// equalTo24(2,3,4,5) //can return "(5+3-2)*4" or "(3+4+5)*2"
// equalTo24(3,4,5,6) //can return "(3-4+5)*6"
// equalTo24(1,1,1,1) //should return "It's not possible!"
// equalTo24(13,13,13,13) //should return "It's not possible!"
// ```
// ```coffeescript
// equalTo24(1,2,3,4) # can return "(1+3)*(2+4)" or "1*2*3*4"
// equalTo24(2,3,4,5) # can return "(5+3-2)*4" or "(3+4+5)*2"
// equalTo24(3,4,5,6) # can return "(3-4+5)*6"
// equalTo24(1,1,1,1) # should return "It's not possible!"
// equalTo24(13,13,13,13) # should return "It's not possible!"
// ```
//     
// # Series:
//  - [Count animals](http://www.codewars.com/kata/57121e6fcdbf63eb94000e51)
//  - [A*B=C](http://www.codewars.com/kata/5714594d2817ff681c000783)
//  - [Half it III](http://www.codewars.com/kata/5717293a672b20c4b30008d0)
//  - [Half it IV](http://www.codewars.com/kata/5719b28964a584476500057d)
//  - [Excel Puzzle #1](http://www.codewars.com/kata/571b93687beb0a8ade000a80)
//  - [Excel Puzzle #2](http://www.codewars.com/kata/571d946faa2dcbe939000df4)
//  - [Equal to 24](http://www.codewars.com/kata/574e890e296e412a0400149c)