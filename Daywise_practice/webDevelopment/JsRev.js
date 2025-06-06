function fun(str){
    var trim=str.trim();
    var upper=trim.toUpperCase();
    upper.endsWith('javascript');
    var replace=upper.replace('Javascript','JS');
   return replace.split(' ');

}
console.log(fun(' i like javascript '));
//
function logUserDetails(...users){
    users.forEach(user=>{
        console.log(`user: ${user.name},Age:${user.age}`)
    })
}
logUserDetails({name:'Gita',age:12},
    {name:'jaya',age:13}
)

//
var student={
    name:'sudha',
    age:14,
    location:'Hyd'
}
student.class='IX standard';
student.location='Chennai';
console.log(student);
delete student.age;
console.log(student);
for(key in student){
    //console.log(`${key} : ${student[key]}`);
    console.log(key);
    console.log(student[key]);
    console.log(key +' : ',student[key]);
}
var copy={...student};
console.log(copy);
copy.location='Mumbai';
console.log(copy);
console.log(student);

function vowelCount(str){
   let count=0;
   let vowels='aeiouAEIOU';
   for(val of str){
    if (vowels.includes(val)){
        count++
    }
   }
  return count;
}
console.log(vowelCount('Aeroplane'));

function recCount(str){
    if(str.length===0) return 0;
    let vowels='aeiouAEIOU';
    let isVowel= vowels.includes(str[0])?1:0;
    return isVowel+ recCount(str.slice(1));
}
console.log(recCount('Aeroplane'));
//	Write a recursive function sumUpTo(n) that calculates the sum of all integers 
// from 1 to n using recursion. For example, sumUpTo(5) should return 15.

function sumUpTo(n){
    let sum=0;
    for(let i=1;i<=n;i++){
        sum +=i;
    }
    return sum;
}
console.log(sumUpTo(5));

//recursive factorial 
function factorial(n){
    if(n===0 || n===1) return 1;
    return n*factorial(n-1);
}
console.log(factorial(5));

//recursive sum
function sumfactorial(n){
    if(n===0)return 0;
    return n+sumfactorial(n-1);
}
console.log(sumfactorial(6));

//vowel
function countVowels(str){
    if(str.length===0)return 0;
    let vowels='aeiouAEIOU';
    let isVowel=vowels.includes(str[0])?1:0;
    return isVowel+countVowels(str.slice(1));
}
console.log(countVowels('aeroplane'));
//	Write a function getNames(users) that takes an array of user objects and returns an array of their names.
function getNames(users){
   return users.map(user=>user.name);
//   //dreturn users.forEach(user=>{
//     console.log(`${user.name}`);
//   });
}
const users= [{id:1,name:'sonia',age:12},
        {id:2,name:'danya',age:15},
        {id:3,name:'greeshma',age:14}];


console.log(getNames(users));
//Write a function filterByAge(users, age) that returns users whose age is greater than the given age.
function filterByAge(users, age){
return users.filter(user=>user.age>age);
}
console.log(filterByAge(users,13));

//Write a function getTotalSalary(employees) that calculates the total salary from an array of employee objects.
var employee=[{id:1,name:'gita',salary:15000},
    {id:2,name:'sita',salary:20000},
    {id:3,name:'rita',salary:12000}]
console.log(employee);
function getTotalSalary(employees) {
    return employees.reduce((total,emp)=>total+emp.salary,0);
}
console.log(getTotalSalary(employee));
//	Write a function groupByDepartment(employees) that returns an object grouping employees by department.
function groupByDepartment(employees{
    
}

