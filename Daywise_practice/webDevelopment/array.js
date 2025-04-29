//push
var arr1=["red","green"]
console.log(arr1);
arr1.push("blue","yellow");
 console.log(arr1);

 //unshift
 var arr2=["pen","pencil"]
 console.log(arr2);
 arr2.unshift("eraser");
 console.log(arr2);

 var $arr=[1,2]
 console.log($arr);

 //pop
 var arr3=["sun","moon","stars"]
 console.log(arr3);
 arr3.pop("stars");
console.log(arr3);

//shift
var arr4=["dog","cat","rabbit"]
console.log(arr4);
arr4.shift("dog");
console.log(arr4);

//splice
let arr5=[10,20,30,40,50]
console.log(arr5);
//arr5.splice(2,2);
console.log(arr5);
arr5.splice(2,2,25,35);
console.log(arr5);

var arr6=["grape","orange"]
arr6.splice(1,0,"apple","banana");
console.log(arr6);

let colors=["red"]
let len=colors.push("green","blue","yellow");
console.log(colors);
console.log(len);

let nums=[20,30]
nums.unshift(10);
nums.push(40);
console.log(nums);

nums.splice(1,2);
console.log(nums);

let arr=[1,2,3,4,5,6]
let removed=arr.splice(2,2);
console.log(arr);
console.log(removed);

let items=["a","b","c","d","e"]
let odd1=items.splice(1,1,"x");
console.log(items);
console.log(odd1);
let odd3=items.splice(3,1,"y");
console.log(odd3);
console.log(items);

let nums1=[5,10,15]
console.log(nums1);
let fadd=nums1.unshift(0);
console.log(nums1);
let ladd=nums1.push(20);
console.log(nums1);
nums1.shift();
nums1.pop();
console.log(nums1);

let base=[1,3,5]
base.splice();