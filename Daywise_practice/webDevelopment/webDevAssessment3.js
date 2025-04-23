//1.
 function calculateGrade(marks) {
     return marks>=90 ? "A":
            marks>=70 ? "B":
            marks>=50 ? "c":
            "Fail"
}
console.log(calculateGrade(95));

//2.
function factorial(n){
    if(n===0){
        return 1
    }
    return n*factorial(n-1)
}
console.log(factorial(5));

//3
//var sumEven=()=>{

//}



//4
function countPropertries(obj){
    let count=0;
    for(let x in obj){
       count++
    }
}
var o={
    name:'jyoti',
    age:20,
    city:'Hyd'
}
console.log(countPropertries(o));



//5
//5.1
let  employee={
     name:'radha',
    id:1,
    skills:['html','css','javascript'],

 }
 console.log(employee);
 //5.2
 employee.designation='Software Developer';
 
 console.log(employee);
 //5.3
 let copy=employee;
 console.log(copy);
 copy.name="rekha";
 console.log(copy);
console.log(employee);
//5.4
function empdetails(e){
    for(let x in empdetails){
        console.log(x);
    }
}
empdetails(employee);



 //6
 arr=[12,10,3,6,5,2];
function findMax(arr){
    let x=arr[0]
    for(let i=1;i<arr.length;i++){
        if (arr[i]>x){
            x=arr[i];
        }
    }
    return x;
}
console.log(findMax([12,10,3,6,5,2]));

//7
let mar={
    maths:80,
    science:90,
    social:70,
    telugu:70
}
console.log(mar);

function sumObjectValues(object) {
    let sum=0;
    for(x in object){
        sum +=object[x]
    }
return sum;
}
console.log(sumObjectValues(mar));

