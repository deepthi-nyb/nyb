const id1=Symbol("userid");
const id2=Symbol("userid");
console.log(id1===id2);
const user={ [id1]:101,
            name:"Alice"
}
console.log(user);
let a=10;
let b=10;
console.log(a==b);
console.log(a===b);
//loose inequality
console.log(a!=b);
console.log(a!==b);
var obj1={A:20}
var obj2={A:20}
console.log(obj1==obj2);
console.log(obj1===obj2);
//ternary operators
console.log(2<3?console.log("true case"):console.log("false case"));
console.log(2>3?console.log("true case"):console.log("false case"));
console.log(5>2?console.log("true case"):console.log("false case"));
console.log(5<2?console.log("true case"):console.log("false case"));
//logical operators
//logical and
console.log(a==b && a===b);
//logical or
console.log(a!==b || a===b);
//logical not
console.log(!a===b);
//control statements
var m=10;
var n=20;
if (m>n){console.log("m is greatere than n")}
else {console.log("m is smaller than n")};
var p=10
if(p==1){console.log("p is equal to 1")}
else if(p==2) {console.log("p is equal to 2 ")}
else {console.log("p is not 1 or 2")};

var q=10
if(q==10){console.log("q is equal to 10")}
else if(q==20) {console.log("q is equal to 20")}
else {console.log("q is not 1 or 2")};
//
let student_avg_grade=80;

if (student_avg_grade>=90){console.log("Excellent")}
else if(student_avg_grade>= 80 ){console.log("Good job!")}
else if(student_avg_grade>=70){console.log("Needs improvement")}
else if(student_avg_grade>=60){console.log("Passing,could Do better")}
else {console.log("failing")};

let x = 10;
console.log(x++ + ++x);

let y=5;
 
console.log(++y);
console.log(y++);

let z=6;
 
console.log(y++);//7
console.log(++y);//9

let w = 5;

console.log(w++); // prints 5, then y becomes 6
console.log(++w); // y becomes 7, then prints 7

let c=4
let d= c++ + ++c + --c+ c--;
console.log(c);
console.log(d)

let e=10;
console.log(e++ + ++e);

let isTrue=true;
console.log(!isTrue==false);

let score=85;

if (score>=90){console.log("Excellent")}
else if (score>=80){console.log("Good job!")}
else {console.log("keep trying")};

let fruit="apple";

switch(fruit){case "banana" :console.log("banana");
              break;
              case "apple" :console.log("apple");
              break;
              case "mango" :console.log("mango");
              break;
              default:console.log("unknown fruit")
}