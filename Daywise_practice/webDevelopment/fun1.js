// Write a function capitalizeWords(str) that capitalizes the first letter of every word in a string.
// Input: 'hello world from javascript'
// Output: 'Hello World From Javascript'
function capitalizeWords(str){
   return  str.split(' ')
    .map((word)=>word.charAt(0).toUpperCase()+word.slice(1))
    .join(' ');
}
console.log(capitalizeWords('hello world from javascript'));
//note:
console.log('hello world'.charAt(0).toUpperCase());
console.log('hello world'.charAt(0).toUpperCase()+'hello world'.slice(1)); 

document.getElementById('head2').style.backgroundColor='blue';

//
function camelCase(str){
    return str
    .split(' ')
    .map((word)=>word.charAt(0).toUpperCase()+word.slice(1))
    .join(' ')
}
console.log(camelCase('this is camel case conversion'));
// 2. Count Occurrences of a Character
// Write a function countChar(str, ch) that counts how many times a character appears.
// Input: ('banana', 'a')
// Output: 3
function countChar(str, ch) {
    let charCount=0;
    for(let val of str){
        if(val===ch){
            charCount++;
        }
    }
    return charCount;
}
console.log(countChar('banana','a'));
//using filter
function charCount(str, ch){
    return str.split('').filter(c=>c===ch).length;
}
console.log(charCount('banana','a'));
// Reverse Each Word in a Sentence
// Write a function reverseWords(str) that reverses each word but keeps the word order.
// Input: 'open ai rocks'
// Output: 'nepo ia skcor'
function reverseWords(str){
    return str
    .split(' ')
    .map(word=>word.split('').reverse().join(''))
    .join(' ');
}
console.log(reverseWords('open ai rocks'));
// //Q4. Check for Anagram
// Write a function isAnagram(str1, str2) that returns true if two strings are anagrams.
// Input: 'listen', 'silent'
// Output: true
function isAnagram(str1, str2){
    return str1.split('').sort().join('')===str2.split('').sort().join('');
}
console.log(isAnagram('listen','silent'));
// Q5. Extract Initials from Full Name
// Write a function getInitials(name) to return initials from full name.
// Input: 'deepthi sri'
// Output: 'DS'
function getInitials(name){
    return name.split(' ').charAt(0).toUpperCase().join('');
}
console.log( getInitials('johnson john jerry'));
