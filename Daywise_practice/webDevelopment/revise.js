var x;
let y;
x= 4;
y=6;
z=x+y;
console.log(z);
(5+6)*10;
let a,b;
a=12;
b=10;
console.log(a+b);
c=2;
d=3;
console.log(c+d);
console.log(typeof 'hello');
console.log(typeof 123);
console.log(typeof true);
console.log(typeof undefined);
console.log(typeof null);
console.log(typeof {});
console.log(typeof []);
let value=[1,2,3,4];
console.log(value);
console.log(value[0]);
console.log(value.length);
let e=10,f=3;
console.log(e+f);
console.log(e-f);
console.log(e*f);
console.log(e/f);
console.log(e%f);
console.log(e**f);
console.log(e++ +f);
console.log(e);
console.log(--e +f--);
console.log(++e + ++f);
console.log(e+=f);
console.log(e-=f);
 let p=5,q="5";
 console.log(p==q);
 console.log(p===q);
 console.log(p!=q);
 console.log(p!==q);
 console.log(p>2 && q<10);
 console.log(p>2 && q>10);
 console.log(p>2 || q<10);
 console.log(p>2 || q>10);
 for(i=1;i<=5;i++){console.log(i)};

 var array=[25,35,45,55,65]
 console.log(array);
 console.log(array[0]);
 console.log(array[1]);
 console.log(array[2]);
 console.log(array[3]);
 console.log(array[4]);
 var student={name:'sita',
             age:12,
             city:'hyd'
}
console.log(student);
// object length
console.log(Object.keys(student).length);
console.log(student.name);
console.log(student.age);
console.log(student.city);
var stu_details=['sita',12,'hyd']
console.log(stu_details);
//array length
console.log(stu_details.length);
//for..of for arrays
for(let x of stu_details){console.log(x)}
//for..in for objects
for(let x in student){console.log(student[x])}
var sum=0;
for(let x of array){sum +=x}
console.log("sum of all numbers is:",sum);
console.log("sum of all numbers is:"+sum);
let r=-5;
if(r<0){console.log("r is negative numbver");}
else if (r>0){console.log("r is positive numbver");}
else{console.log("r is zero")}
let day=2;
switch(day){case 1:console.log("mon");
            break;
            case 2:console.log("tue");
            break;
            case 3:console.log("wed");
            break;
            default:console.log("other day");
}
function add(a,b)
{console.log(a+b);}
add();
add(2,3);
add(20,30);
function sub(a=10,b=3)
{console.log(a-b);}
sub();
function sub1(a=10,b)
{console.log(a-b);}
sub1();
function sub1(a=10,b)
{console.log(a);
    console.log(b);
}
sub1(5);
sub1(5,6);

function s(a=10,b=null)
{console.log(a);
    console.log(b);
}
s(20,20);

function s1(a=10,b=15)
{console.log(a);
    console.log(b);
}
s1(5,null);
s1(undefined);

function s2(a=10,b=20)
{console.log(a);
    console.log(b);
}
s2(undefined,null);
function s3(a=null,b=20)
{console.log(a);
    console.log(b);
}
s3(undefined,null);
function s4(a,b)
{console.log(a);
    console.log(b);
    console.log(arguments);
}
s4(10,20,30,40,1,2,4,7,90);
function s5(a,b,...rest)
{console.log(a);
    console.log(b);
    console.log(arguments);
    console.log(rest);
}
s5(10,20,30,40,1,2,4,7,90);
var A=(a,b,...c)=>{console.log(a);
                     console.log(b);
                     console.log(c);
                    
}
A(10,20,30,40,5,6,8,9,3);
console.log(s,t);
var s=10;
var t=20;
console.log(s,t);

console.log(u,v);
let u=10;
let v=20;
console.log(u,v);