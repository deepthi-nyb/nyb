//function currying
function A(a){
    return function B(b){
        return function C(c){
            return function D(d){
                return a+b+c+d;
            };
        };
    };
}

console.log(A(1)(2)(3)(4));

//sum of fisrt five natural numbers
function sumOfNaturalNum(a){
    let sum=0;
    for(let i=1;i<=a;i++){
        sum +=i;
    }
    return sum;
}
console.log(sumOfNaturalNum(5));

//sum of first five natural numbers using recursive function
function recFun(a){
    if(a===0){
        return 0;
    }
  return a+recFun(a-1);
}
console.log (recFun(5));
//product of first three natural numbers
function prodNum(a){
    if(a===0){
        return 1;
    }
    return a*prodNum(a-1);
}
console.log(prodNum(3));

var k= function hello(){
    return "this is hello function";/*first class function-a function assigned to a 
                                      variable & passed as an argument can be returned by another function*/
}

function hai(M){
return M();
}
console.log(hai(k));//Higher order function-function which takes another function as argument

//greet function currying
function greet(greeting){
    return function(name){
        return `${greeting},${name}!`;
    }
}
console.log(greet("Hi")("meena"));



//scope
a=4;
b=5;
c=6;
function f1(){
    { var a=1;
        let b=2;
        const c=3;
        console.log(a);
        console.log(b);
        console.log(c);
    }
    console.log(a);  //var is functional scope
    //console.log(b);//let is block scope
    //console.log(c);//const is block scope
}

console.log(a);  
f1();

var d=5;
console.log(d);

//console.log(g);
let g=6;
let f=9;

//var-functional scope
//let-block scope
//const-block
//hoisting

//console.log(e);
var e=7;

function f2(a,){
    return f3 ()
}


//closure
function f1(a,b){
    return function f2(){
        return a+b;
    }
}
let k=f1(2,3);
console.log(k(2,3));