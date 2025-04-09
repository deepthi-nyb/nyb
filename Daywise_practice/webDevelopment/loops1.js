//controlled statements
let a=20;
let b=10;
console.log(a);
console.log(b);
//if controlled statement
if(a>b){console.log("a is greater than b");}
//if---else
if (a<b){console.log("a is less than b");}
else{console.log("a is greater than b");}
//if--else if---else--ladder
if(a<b){console.log("a is less than b");}
else if(a>b){console.log("a is greater than b");}
else if(a !==b){console.log("a is not equal to b")}
else{console.log("a is qual to b");}
//switch
let day=2;
switch (day) {case 1:console.log("mon");
           break;
           case 2:console.log("weekday is tue");
           break;
           case 3:console.log("wed");
        break;
    default:console.log("other day");}
//loops
//for loop
for (i=0;i<=5;i++){console.log(i);}
//while loop
//let j=0
//while(j<=5){console.log(j);
           // i++;}
j=0;
do{console.log(j);
    j++;
}           
while(j<5);
//2 table using for loop
for(i=0;i<=10;i++){console.log(i*2);}
//2 table using while loop
let k=1
while(k<=10){console.log(k*2);
    k++;
}
//2 table using do while loop
var l=1;
do{console.log(l*2);
   l++;
}
while(l<=10);
// 5 multiples from 1 to 100
for(m=1;m<=100;m++){console.log(m*5);}
//using while loop
var n=1;
while(n<=100){console.log(n*5);
             n++;
}
//using do while loop
o=1;
do{console.log(o*5);
          o++;
}
while(o<=100);
//sum of all odd numbers between 1 and 50 
//using for loop
//for running total
var q=0
for(p=1;p<=50;p++)
{if(p%2 !==0){console.log(q +=p)}}
//for final total
console.log(q);
console.log("sum of all odd numbers between 1 and 50 is :"+ q);
///var r=0;
//while(i<=50){if( i%2 !==0){r +=q}
    //console.log("sum of all odd no's between 1 and 50 is:" +r)}
 //sum of all even numbers
 //using for loop
 let s=0;
 for(i=1;i<=50;i++)
    {if(i%2===0){s +=i}}
 console.log(s);
 console.log("sum of all even numbers between 1 and 50 is:",s);
 //using while loop
 //let s=0;
 //let i=1;
 //while(i<=50){if(i%2===0){s +=i}
 //i++}
 //console.log(s);
 //
 var person={name:'peter',
             age:32,
             city:'Hyd'
 }
 for(let x in person){console.log(person[x])}
  var details=['peter',32,'hyd']
  for(let x of details){console.log((x))}
  //tasks
  //1display student data using for....in loop
  var student_data={stu_name:'sana',
                    age:12,
                    class:7}
 for(let x in student_data){console.log(student_data[x])}
 //month display using switch
 var month=4
 switch (month){case 1:console.log('jan') 
                 break;
                case 2:console.log('feb')
                break;
                case 3:console.log('mar') 
                break;
                case 4:console.log('april')
                break;
                case 5:console.log('may') 
                break;
                case 6:console.log('june')
                break;
                case 7:console.log('july') 
                break;
                case 8:console.log('aug')
                break;
                case 9:console.log('sep') 
                break;
                case 10:console.log('oct')
                break;
                case 11:console.log('nov') 
                break;
                default:console.log('dec')}
//create an array that contains marks of 5 students in an exam use for....of loop to calculate avg
var marks=[75,86,94,65,78];
let sum=0;

for(let x of marks){
    sum +=x
}
let avg=sum/marks.length;
console.log("average marks :",avg);
