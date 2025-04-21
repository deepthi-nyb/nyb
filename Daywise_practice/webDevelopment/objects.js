//object literal
var employee={
    empid : 1,
    empName: "sudha",
    phNo:123,
    location:"hyd",
    mailId:"sudha@gmail.com"
}
console.log(employee);

console.log(employee.empid);
console.log(employee.empName);
console.log(employee["location"]);

//constructor function
function Person(name,age){
    this.name=name;
    this.age=this.age;
}
let p1=new Person("radha",25);
console.log(p1);
console.log(p1.name);

//factory function

function createPerson(name,age){
    return{
        name,
        age
    }
}
let p3=createPerson("gita",20);
console.log(p3);
console.log(p3.name);

//object literal

var person={
    name:"jyothi",
    age:22
}
console.log(person.name);

//to update key value
person.name="sita";
console.log(person.name);

//to add key value
person.location="Hyd";
console.log(person.location);
console.log(person);

//to delete key & value both
delete person.age;
console.log(person);


//for in loop
for (p in person){
    console.log(person[p]);//as p is dynamic key no need of quotes
}

var a=Object.keys(person);
var b=Object.values(person);
var c=Object.entries(person);
console.log(a);
console.log(b);
console.log(c);

function greet(user="Guest"){
    return `hi,${user}!`;

}
console.log(greet());
console.log(greet("sunitha"));

function createObj(name,age){
    return{
        name:name,
        age:age
    };
}

console.log(createObj('rani',20));

function circleArea(r){
    return 3.14*r**2
}
console.log(circleArea(4));

//or

const AreaOfCircle=function(radius){
                   return Math.PI*radius*radius
};

console.log(AreaOfCircle(4));


function f1(num){
    return num*2
}
console.log(f1(5));

let a=(num)=>{
    return num*2
}
console.log(a(5));

// function applyOperation(n1,n2,M){
//     console.log("this is higher order function");
//     M(n1,n2);
//     return n1+n2;
   
// }

// function callback(x,y){
//     console.log("this is call back function");
//    return x+y;
// }

// let result=applyOperation(2,4,callback);
// console.log("Result:",result);

function applyOperation(a,b,operation){//higher order function
    return operation(a,b);
}

const add=(x,y)=>{return x+y};//call back fucntion
const multiply=(x,y)=>{return x*y};//call back function

console.log(applyOperation(4,5,add));
console.log(applyOperation(4,5,multiply));

function sumAll(a,b,...c){
    total=a+b+
    
}

