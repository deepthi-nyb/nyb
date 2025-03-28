//array

var A=[10,20,30,40];
console.log(A);

var B=['apple','banana','mango'];
console.log(B);

var apple='apple';
var banana='banana';
var mango='mango';

var c=[10,20,30,40,apple,banana,mango,'apple','banana','mango',[1,2,3],undefined,null,true,false];
console.log(c);
console.log(c.length);

var student_data=['ravi','raju','kiran'];
console.log(student_data);
console.log(student_data[1]);
console.log(student_data.length);

//object

var emp_details={name:'sita',
                 id: 1,
                 phno: 123,
                 email:'sita@gmail.com',
                 address: 'Banglore'   
}
console.log(emp_details);
console.log(emp_details.name);
console.log(emp_details.email);

console.log(emp_details['id']);
console.log(emp_details['phno']);

//symbol
let sym1=Symbol('id');
let sym2=Symbol('id');
console.log(sym1 === sym2);

//bigint
var bignumber= 123456789012345n;
console.log(typeof bignumber);
console.log(bignumber);

//object
let person={name: 'john',
            age:20}
console.log(person)
 
//array
var fruits=['apple','mango','papaya'];
console.log(fruits);

//function
function greet(){
    console.log('this is function');
}
greet();

function greet1()
{console.log('This is another function');}

greet1();

// Date
let today=new Date();
console.log(today.getDate());






