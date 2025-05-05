let s=new Set();
console.log(s);
//to add elements
s.add(1);
s.add(2);
s.add(3);
s.add(4);
s.add(4);
console.log(s);
//to delete particular element
s.delete(1);
console.log(s);
//to delete all elements
s.clear();
console.log(s);
//to remove duplicates form array
//using set method
var arr=[1,2,3,4,5,3,2,7,8,4,5]
console.log(arr);
var Aset=new Set(arr);
console.log(Aset);
function uniqArr(arr){
    let newarr=[];
    for(let val of arr){
        if(newarr.includes(val)){
        continue
    }
    else {newarr.push(val);
    }
}
return newarr;
}
console.log(uniqArr([1,2,3,4,5,3,2,7,8,4,5]));
//
var arr=[1,2,3,4,5,3,2,7,8,4,5]
console.log(arr);
var Aset=new Set(arr);
console.log(Aset);
function uniqArr(arr){
    let newarr=[];
    for(let val of arr){
        if(!newarr.includes(val)){
            newarr.push(val);
        }
}
return newarr;
}
console.log(uniqArr([1,2,3,4,5,3,2,7,8,4,5]));
//using indexof
function indarr(arr){
   let newarr= [];
   for (val of arr){
    if(newarr.indexOf(val)=== -1){//
        newarr.push(val);
    }
   }
   return newarr;
}

console.log(indarr([1,2,3,4,5,3,2,7,8,4,5]))
//filter
// function filterArr(arr){
//     let newarr=[];
//     for(val of arr){
//         if(newarr.filter(val=>!val.includes(arr))){
//             newarr.push(val)
//         }
//     }
//     return newarr
// }
// console.log(filterArr([1,2,3,4,5,3,2,7,8,4,5]));

//flatenning of array
let arr1=[1,2,[3,4],5,[6,[7,8]],9];
let flatArr=arr1.flat();
//
let arr3=[1,2,2,3,4,4,5,6,6]
console.log(arr3);
let setArr3=new Set(arr3);
console.log(setArr3);
//
function dupArr3(arr){
    let newArr=[];
    for(val of arr){
        if(!newArr.includes(val)){
            newArr.push(val);
        }
    }
    return newArr;
}
console.log(dupArr3([1,2,3,4,5,3,2,7,8,4,5]));
//
function indArr3(arr){
    let newArr=[];
    for(val of arr){
        if(newArr.indexOf(val)===-1){
            newArr.push(val);
        }
    }
    return newArr;
}
console.log(indArr3([1,2,3,4,5,3,2,7,8,4,5]));
//
let uniArr=arr3=>[...new Set(arr3)];
console.log(uniArr);
//
let arr4=[1,2,2,3,4,5,6,6,7,8,6,8,9,3,2]
let uArr4=arr4.filter((item,index)=>arr4.indexOf(item)===index);
console.log(uArr4);
//
let arr5 = [1, [2, [3, 4], 5]];
let flatArr5=arr5.flat(2);
console.log(flatArr5);
//
function getArrayDepth(arr) {
    if (!Array.isArray(arr)) return 0;

    return 1 + Math.max(0, ...arr.map(getArrayDepth));
}

const arr6 = [1, [2, [3, [4, 5]]]];

console.log(getArrayDepth(arr6));
//
let arr7 = [1, [2, [3, [4, [5]]]]];
let nestedFlat=arr7.flat(Infinity);
console.log(nestedFlat);
//
let uniArr4=[...new Set(arr4)]
console.log(uniArr4);
//
let a=[1,2,3]
let b=[3,4,5]
let union=[...new Set([...a,...b])];
console.log(union);