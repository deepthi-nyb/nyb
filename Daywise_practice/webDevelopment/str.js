//Template literal
var x=10;
var y=2;
console.log(x+y);
console.log(`sum of ${x} and ${y} is ${x+y}`);

//str.includes
let str="this javascript file";
let result=str.includes("javascript");
console.log(result);
console.log(`The length of string is ${str.length}`);

//substring//slice
var a="hello good morning";
console.log(a.substring(0,5));
console.log(a.slice(0,6));
console.log(a.substring(a.indexOf("m"),a.indexOf("g")));
console.log(a.substring(a.indexOf("m")));
var string=a.indexOf("morning");
console.log(string);
console.log(a.indexOf("m"));
console.log(a.indexOf("g"));
console.log(a.indexOf("g",a+1));
console.log(a.charAt(4));
console.log(a.charCodeAt(0));
console.log(a.charCodeAt(0));
var b="  hello  ";
console.log(b.trimStart());
console.log(b.trimEnd());
console.log(b.trim());
console.log(a.toUpperCase());
console.log(a.toLowerCase());
//From "user@example.com", extract "example.com".
let email="user@example.com";
console.log(email.substring(email.indexOf("@")+1));
// Count how many times a letter appears in a string
let string1="Banana";
let count=0;
for(char of string1){
    if(char==="a"){
    count++
    }
}
console.log(count);
function charCount(str){
    let count=0;
    for(char of str){
        if(char==="a"){
            count++
        }
    }
return count;
}
console.log(charCount("banana"));
//count vowels of string

function vowelCount(str){
    let count=0;
for (char of str.toLowerCase()){
    if("aeiou".includes(char)){
        count++
    }
}
return count;
}
console.log(vowelCount("javascript"));
function countLetter(str){
    let count=0;
    for(char of str.toLowerCase()){
        if(char==="c"){
            count++
        }
    }
    return count;
}
console.log(countLetter("RaceCar"));

var string="welcome Home";
console.log(string.endsWith("Home"));
//"welcome home"string ends with "home" or not
function strEnd(string){
    
    if(string.endsWith("home")){
        return true;
    }
    return false;
}
console.log(strEnd("welcome home"));
console.log(strEnd("welcome house"));
let str1="user@example.com";
console.log(str1.substring(str1.indexOf("@")+1));
function extractFun(str1){
    let result=str1.substring(str1.indexOf("@")+1);
    return result;
}
console.log(extractFun("latha@gmail.com"));

let str2="sujatha@gmail.com"
console.log(str2.substring(0,str2.indexOf("@")));

function beforeFun(str2){
let result=str2.substring(0,str2.indexOf("@"));
return result;
}
console.log(beforeFun("rani@gmail.com"));
