//1ans

let studentInfo={
    name:"sana",
    age:25,
    subjects:["Telugu","Hindi","English","Maths","science","social"],
    getdetails: function(){
        return`Name:${this.name},Age:${this.age},Subjects:${this.subjects.join(",")} `;
    }
}
console.log(studentInfo.getdetails());
//2ans
// function expression
function factorial(n){
    if(n===0 || n===1)return 1;
    return n*factorial(n-1);
}
console.log(factorial(6));
// anonymous function expression
let factorialExpr=function(n){
    if(n===0 || n===1) return 1;
    return n*factorialExpr(n-1);
}
console.log(factorialExpr(5));
//arrow function expression
let factorialArrow= (n)=>{
    if(n===0 || n===1) return 1;
    return n*factorialArrow(n-1);
}
console.log(factorialArrow(4));
//IIFE
let result=(function factorialIIFE(n){
    if(n===0 || n===1)return 1;
    return n*factorialIIFE(n-1);
})
(5);
console.log(result);
//3ans
 //prime number checker

 function isPrime(num){
    if(num===0)return false;
    if(num===1)return false;
    if(num===2)return true;
    if(num%2===0)return false;
    for(i=3;i<=Math.sqrt(num);i +=2){
        if(num%3===0)return false;
    }
    return true;
 } 
 console.log(isPrime(10));
 console.log(isPrime(3));
 console.log(isPrime(15));
 console.log(isPrime(23));

 //4ans
 //factorial calculator
 function factorial(n){
    if(n<=0)return -1;
    if(n===0)return 1;
    let result=1;
    for(i=1;i<=n;i++){
        result *=i
    }
    return result
 }
 console.log(factorial(6));
 //5ans
 //Palindrome checker
 function isPalindrome(str){
    str=str.replace(/[^a-z0-9]/gi,'').toLowerCase();
    if(str==='')return false;
    return str === str.split('').reverse().join('');
 }
 console.log(isPalindrome("hello world"));
 console.log(isPalindrome("racecar"));
 
 

