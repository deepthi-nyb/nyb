// //1. Sum of Digits
// Write a function sumOfDigits(num) that returns the sum of all digits in a given number.

// Input: 1234 → Output: 10
// function sumOfDigits(num) {
//   let sum=0;
//   let digits=num.toString();
//    for(i=0;i<digits.length;i++){
//     sum += parseInt(digits[i]);
//    }
//   return sum;
// }
// console.log(sumOfDigits(12345));
// //

function sumOfDigits(num){
    let sum=0;
    let digits=num.toString();
    for(let i=0;i<digits.length;i++){
        sum += parseInt(digits[i]);
    }
    return sum;
}
console.log(sumOfDigits(1234));

// //2. Check Palindrome
// Write a function isPalindrome(str) that returns true if the string is a palindrome, otherwise false.
// Input: 'level' → Output: true
// Input: 'openai' → Output: false
function isPalindrome(str){
    if (str===str.split('').reverse().join('')){
        return true;
    }
    else 
    return false;
}
console.log(isPalindrome('level'));

console.log('level'.split('').reverse().join(''));

// 3. Find Factorial
// Write a function factorial(n) that returns the factorial of a number using recursion.

// Input: 5 → Output: 120
function factorial(n){
    if(n===0 || n===1) {return 1};
    return n*factorial(n-1);
}
console.log(factorial(5));

// ✅ Level 2: Intermediate Logic
// 4. Count Vowels
// Write a function countVowels(str) that counts how many vowels are in a string.

// Input: 'Aeroplane' → Output: 5
function countVowels(str){
    let vowels='aeiouAEIOU';
    let vowelCount=0;
    for(let val of str){
        if(vowels.includes(val)){
            vowelCount++;
        }
    }
    return vowelCount;
}
console.log(countVowels('Aeroplane'));

// Reverse a Number
// Write a function reverseNumber(num) that returns the number with digits reversed.

// Input: 1234 → Output: 4321
function reverseNumber(num){
    return Number(num.toString().split('').reverse().join(''));
}
console.log(reverseNumber(1234));
//
function reverseNumber(num) {
    const isNegative = num < 0;
    const reversed = Math.abs(num).toString().split('').reverse().join('');
    return isNegative ? -Number(reversed) : Number(reversed);
}

console.log(reverseNumber(-1234)); // Output: -4321
// 6. Find Longest Word
// Write a function longestWord(sentence) that returns the longest word from a sentence.

// Input: 'I am learning JavaScript functions'
// Output: 'JavaScript'

function longestWord(sentence){
    let words=sentence.split(' ');
    let longest='';
    for(word of words){
        if(word.length>longest.length){
            longest=word;
        }
    }
    return longest;
}
console.log(longestWord('I am learning javascript functions'));

// ✅ Level 3: Advanced Logic
// 7. Flatten Nested Array
// Write a function flatten(arr) that flattens a nested array.

// Input: [1, [2, [3, 4]], 5]
// Output: [1, 2, 3, 4, 5]
function flatten(arr){
    return arr.flat(Infinity);
}
console.log(flatten([1, [2, [3, 4]], 5]));
// 8. Find Unique Elements
// Write a function getUnique(arr) that returns only unique elements from an array.

// Input: [1, 2, 2, 3, 4, 4]
// Output: [1, 2, 3, 4]

function getUnique(arr){
    return [...new Set(arr)];
}
console.log(getUnique([1,2,2,3,3,4,5,6,6]));

var a=[...new Set([1,2,2,3,3,4])]
console.log(a);


