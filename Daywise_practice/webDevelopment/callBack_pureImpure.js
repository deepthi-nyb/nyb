//call back function
function one(){
    console.log("this is first function");
}
function two(a){
    console.log("this is second function");
    console.log(a);
  a();
}
two(one);

function hello(c){
    console.log("this is hello function");
    console.log("the sum is ",c);
}

function hai(a,b,B){
    console.log("this is hai function");
    B(a+b);
    console.log(B);
}
hai(1,2,hello);

 function callback(sum){//call back function-passed as argument to another function
    console.log("hi");
    console.log("the sum is",sum);

 }   
 function highorder(d,e,c){// higher order function- takes another function as argument
    console.log("hello");
    c(d+e);
 }
 highorder(10,20,callback);

 //pure function
 function add(a,b){
    console.log(a+b);
 }
 add(2,4);

 //impure function
 function multiply(a){
  var b=Math.random();
  console.log(b);
  console.log(a*b);
 }
 multiply();

function f1(a){
    return function f2(b){
        return function f3(c){
            return a+b+c;
        }
    }
}
console.log(f1(1)(2)(3));

function multi1(a){
    return function multi2(b){
        return function multi3(c){
            return a*b*c;

        }
    }
}
console.log(multi1(4)(5)(6));

