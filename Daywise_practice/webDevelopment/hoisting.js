

for(let i=1; i<=20; i++){
if(i%3===0){console.log("FIZZ");}
if(i%5===0){console.log("BUZZ");}
if(i%3===0 && i%5===0){console.log("FIZZBUZZ")}   
else {console.log(i)} ;}
var a=12;
var b=10;
console.log(a);
//for loop
for(let i=1;i<=10;i++)
{console.log("the numbers are:",i)}
//while loop
let i=2;
while(i<=20){if(i%2===0){console.log(i);}
             i++}
var c=6;
var d="6";
console.log(c==d);
console.log(c===d);   
//function declaration
sum();//output-1
function sum(){console.log("1")}

//function expression
//named function
//a();//output-a is not a function
var a=function sum(){console.log("1")}

//anonymous function
var b=function (){console.log("1")}
//arrow function
var c=()=>{console.log("1")}

//Hoisting-accessing memory values even before execution
//var-functional Scope
//let,const-block scope

function add(a,b)//NAN-not a no.
{console.log(a+b)}
add();

function sub()
{console.log(a-b)}
sub();
//var,let,const
//var-functional Scope-function f(){}
//let,const-block scope-{}

function f1(){
    {var e=10;
     let f=20;
     const g=30;  
     console.log(e); 
    console.log(f); 
    console.log(g);
    }
    console.log(e); 
    //console.log(f); 
   
}
f1();
var A;
console.log(A);
let B;
console.log(A);
//const C;

var e=10;
let k=20;
const g=30;
console.log(e,k,g);

var e=11;//allows redeclaration
//let k=15;not allow---already declared error
//const g=24;not allow---already declared error

{
    var x = 1;
    let y = 2;
    const z = 3;
  }
  console.log(x); // o/p-1
  //console.log(y); // o/p-y not defined
  //console.log(z); // o/p-z is not defined
  
  console.log(p);//undefined
  var p=4;

  //console.log(q);//referror:can not access q before initialization
  let q=5;

  console.log(r);//r is not defined

  var s;
  let t;
  //const u;//uncaught syntax error:Missing initialization in const declaration