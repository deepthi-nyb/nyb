let itemParent=document.getElementById('item2').parentElement;
console.log(itemParent);
let grandparent=document.getElementById('item2').parentElement.parentElement;
console.log(grandparent);
let nextSibling=document.getElementById('item1').nextElementSibling;
console.log(nextSibling); 
let previouselement=document.getElementById('item3').previousElementSibling;
console.log(previouselement);
let ulChildren=document.getElementById('ul').children;
console.log(ulChildren);
let firstchild=document.getElementById('ul').firstElementChild;
//
console.log(firstchild);
let lastchild=document.getElementById('ul').lastElementChild;

//
console.log(lastchild);
//14. Q: How to remove item1 from the DOM?
let list1=document.getElementById('ul');
let item1=document.getElementById('item1');
list1.removeChild(item1);
console.log(list1);


////15. Q: How to replace item3 with a new element li with text "Replaced"?
let newItem=document.createElement('li');
newItem.textContent='Replaced';
newItem.setAttribute('id','replace');
let oldItem=document.getElementById('item3');
let list=document.getElementById('ul');
list.replaceChild(newItem,oldItem);
console.log(list);

console.log(this);

//
"use strict"
console.log(this);

//
function show(){
    console.log(this);        
}
show();
//

"use strict"
function show1(){
    console.log(this);
}
show1();
//

// function fun(){
//     x=10;
//     console.log(x)
// }
// fun();

//
const user = {
  name: "jeny",
  greet() {
    console.log(this.name);
  }
};
user.greet(); 


//arrow function
const person = {
  name: "Bob",
  greet: () => {
    console.log(this.name);
  }
};
person.greet();

//
document.querySelector("button").addEventListener("click",  function () {
                                                  console.log(this); 
                                                    });
                    
//fution currying
// function curyy(a,b,c,d){

// }

function curryFun(a){
  return function (b){
    return function (c){
      return function (d){
        return a*b*c+d;
      }
      
    }
  }
}
console.log(curryFun(2)(4)(5)(6));


function countVowels(str){
   const vowels='aeiouAEIOU';
   let vowelcount=0;
   for(val of str){
    if (vowels.includes(val)){
      vowelcount++;
    }
   }
   return vowelcount;
}
console.log(countVowels('Aeroplane'));


//
function recCount(str){
  if(str.length===0) return 0;

  let vowels='aeiouAEIOU';
                                 
   var isvowel=vowels.includes(str[0])? 1:0;     //1

   return isvowel + recCount(str.slice(1));//1+ 1+0+1+ 0+0+1+0+1+0=5
}
console.log(recCount('Aeroplane'));

 console.log('aeroplane'.slice(1));//eroplane

 const numbers = [1, 2, 3];
const [a, b, c] = numbers;

console.log(a); 
console.log(b); 
console.log(c); 


const [x, , z] = [10, 20, 30];
console.log(x, z); 

const [e = 5, f= 10] = [7];
console.log(e); 
console.log(f); 

















