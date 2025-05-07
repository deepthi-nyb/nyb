var details=[{name:"ravi",age:24,address:"hyd",job:"developer",emp_id:1},
{name:"devi",age:34,address:"atp",job:"tester",emp_id:4},
{name:"rani",age:44,address:"chennai",job:"devops",emp_id:3},
{name:"mani",age:39,address:"blore",job:"admin",emp_id:2}]
console.log(details);
var k=details.sort((a,b)=>a.emp_id-b.emp_id);
console.log(k);
var l=details.sort((a,b)=>a.age-b.age);
var l=details.sort((a,b)=>b.age-a.age);
console.log(l);
var m=details.sort((a,b)=>a.name.localeCompare(b.name));
console.log(m);
//
var n= details.sort((a,b)=>{
    if(a.age!=b.age)return a.age-b.age;
    return a.name.localeCompare(b.name)
});
console.log(n);
//
let students = [
    { name: "Emily", grade: 88 },
    { name: "David", grade: 92 },
    { name: "Anna", grade: 85 }
  ];
  
  students.sort((a,b)=>b.name.localeCompare(a.name));
  console.log(students);
  //
  let scores = [
    { name: "Alice", score: 85 },
    { name: "Bob", score: 90 },
    { name: "Charlie", score: 90 },
    { name: "Dave", score: 85 }
  ];
function sortScore(arr){
    return arr.sort((a,b)=>{
        if(a.score!=b.score) return b.score-a.score;
        return a.name.localeCompare(b.name);
    })
    }
    console.log(sortScore(scores));
    //
    let products = [
        { product: "Laptop", price: 1200 },
        { product: "Mouse", price: 200 },
        { product: "Keyboard", price: 450 }
      ];
      
 function lowprice(arr){
    return products.sort((a,b)=>b.price-a.price)
}
console.log(lowprice(products));
//map
// let map=new Map();
// map.set('name','sita');
// map.set(123,'numeric key');
// map.set({id:1},'object key');
// console.log(map.get('name'));
// console.log(map.size);

let map= new Map();
map.set('name','gita');
map.set(123,'numeric key');
map.set({id:1},'object key');

console.log(map.get('name'));
console.log(map.size);
//
function remdup(arr){
    return [...new Set(arr)]
}
console.log(remdup([1,2,2,3,3,4,5,5,6,6]));
//
let arr=[1,2,3,3,4,5,5,6,7,7]
let map1=new Map();
for (i of arr){
    map1.set(i);
}
console.log(map1);
console.log(map1.size);

//count frequencies
// function countFrequencies(arr){
//     let map=new Map();
//     for (item of arr){
//         map.set(item,(map.get(item)||0)+1)
//     }
//     return Object.fromEntries(map); 
// }
// console.log(countFrequencies(['apple','banana','mango','apple','mango']));

function newMap(arr){
    let map=new Map();
    for(i of arr){
        map.set(i,true);
    }
    return map;
}
//console.log(newMap(['apple','banana','mango','apple','mango']));
console.log(newMap([1,2,2,3,3,4,5,6]));
//
function countFreq(arr){
    let map=new Map();
    for(item of arr){
        map.set(item,(map.get(item)||0)+1)
    }
    return map;
}
console.log(countFreq(['apple','banana','mango','apple','mango','orange']));