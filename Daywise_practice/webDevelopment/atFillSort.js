//string to array
//from---converts string to array
let a="hello";
let k=Array.from(a);
console.log(k);
function toArr(str){
    return Array.from(str);
}
console.log(toArr(a));
//at---value at particular index
var M=[1,2,3,4,5,78,9,34,2,3,56,100]
var b=M.indexOf(3);
console.log(b);
var c=M.at(5);
console.log(c);
//fill
var d=M.fill(1,0,4);
console.log(d);
//sort
var e=M.sort();
console.log(e);
var f=M.reverse();
console.log(f);
var g=M.sort((a,b)=>a-b);
console.log(g);
var h=M.sort((a,b)=>b-a);
console.log(h);
//array.from
let i=Array.from([1,2,3,4],x=>x**2);
console.log(i);
//array.from--new set
let j=Array.from(new Set([1,2,2,3,3,4]));
console.log(j);
//array.from--new array
let newArr=Array.from(({length:4}),(_,i)=>i)
console.log(newArr);
//Get the last element of the array ['a', 'b', 'c', 'd'] using .at().
let arr=['a', 'b', 'c', 'd']
let lastEle=arr.at(arr.length-1);
console.log(lastEle);
console.log(arr.length);
//Fill an array of length 5 with the value 'x'.
let filArr=new Array(5).fill('x');
console.log(filArr);
//Replace elements at index 1 to 3 in [0, 1, 2, 3, 4] with 9.
let l=[0, 1, 2, 3, 4].fill(9,1,4);
console.log(l);
//Sort the array [4, 1, 10, 2] in ascending numerical order.
let sort=[4, 1, 10, 2].sort((a,b)=>a-b);
console.log(sort);
//
function strSort(arr){
    return arr.sort()
}
console.log(strSort(["banana", "apple", "cherry"] ));
//
function descSort(arr){
return arr.sort((a,b)=>b-a);
}
console.log(descSort([3, 1, 2]));
//
let m=Array.from({length:5},(_,n)=>n**2);
console.log(m);
//at
let n=['x', 'y', 'z', 'a', 'b'].at(-3);
console.log(n);
//fill
let o=[10, 20, 30, 40, 50].fill(0,2,4);
console.log(o);
//sort
let p=['123', '4', '56', '7890'].sort((a,b)=>b-a);
console.log(p);
/*
let students = [
  { name: 'Alice', score: 42 },
  { name: 'Bob', score: 75 },
  { name: 'Charlie', score: 60 },
  { name: 'David', score: 85 },
  { name: 'Eva', score: 55 }
];

Filter students who passed the exam (score >= 60)

Sort them in descending order of their score

Extract only their names into a new array
students.score.filter(score=>score>=60).sort((a,b)=>b-a)*/
let students = [
    { name: 'Alice', score: 42 },
    { name: 'Bob', score: 75 },
    { name: 'Charlie', score: 60 },
    { name: 'David', score: 85 },
    { name: 'Eva', score: 55 }
  ];
let result=students
           .filter(student=>student.score>=60)
           .sort((a,b)=>b.score-a.score)
           .map(student=>student.name);
 console.log(result);
 /*Input: A string representing a phone number: "9876543210"
Goal: Return the number with all digits masked as * except the last 4, like: "******3210"*/

function maskPhno(str){
    let arr=str.split('');
    arr.fill('*',0,-4);
    return arr.join('');
}
console.log(maskPhno("9876543210"));
//or
function maskPhno1(str){
    return '*'.repeat(str.length-4)+str.slice(-4);
}

console.log(maskPhno1("9876543210"));
//sort by length
function sortBylength(arr){
    return arr.sort((a,b)=>b.length-a.length);
}
console.log(sortBylength( ["banana", "kiwi", "apple", "cherry", "fig"]));

//Use Array.from() and fill() to create a 3x3 grid (2D array) filled with 0s.

let res=Array.from({length:3},()=>Array(3).fill(0));
console.log(res);
//Remove Duplicates and Sort Words by Last Character
//let words = ["apple", "banana", "kiwi", "apple", "cherry", "kiwi"];
// function rmvDup(arr){
//   return [...new Set(arr).sort((a,b)=>{let A=a.slice(-1);
//                                          let B=-b.slice(-1);
//                                          return A.localeCompare(B)})]
// }
// console.log(["apple", "banana", "kiwi", "apple", "cherry", "kiwi"]);