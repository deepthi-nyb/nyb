 
 //map
 let arr=[1,2,3,4,5]
 let k=arr.map(n=>n**2);
 console.log(k);
 //filter
 let arr1=[10,15,2,5,8,21]
 let m=arr.filter(n=>n>5)
 console.log(m);//                                                                              
 //reduce
 let arr2=[10,20,30]                                         
 let p=arr2.reduce((m,n)=>m+n,0)
 console.log(p);
 //every
 console.log(arr.every(n=>n%2==0));
 //some
 console.log(arr.some(n=>n%2==0));
 //
 function upperCase(str){
return str.toUpperCase()
 }  
 console.log(upperCase("banana"));      
 // 
 function getEven(arr){
    return arr.filter(n=>n%2==0)
 }
 console.log(getEven([1,2,3,4,5,6]));
 //
 function getOdd(arr){
    return arr.filter(n=>n%2!=0)
 }
 console.log(getOdd ([1,2,3,4,5,6]));
//aged18orolder
function ageCheck(arr){
    return arr.filter(n=>n>=18)
}
console.log(ageCheck([20,13,18,32,10,25]));
//
function ageCheck1(v){
 if (v>18){
        return  "age is greater than 18"
    }
  else{
  return "age is less than 18"
  }
}
console.log(ageCheck1(12));
//    every                                                                         
let arr3=[60,70,80,90,100]
console.log(arr3.every(n=>n>50));
//
let arr4=[30,70,80,90,100]
console.log(arr4.every(n=>n>50));
//
function allPass(arr){
          for(val of arr)                                                
        {                                                                                
           if(arr.every( m=>m>50)){
            return "all pass"
           }                                                                                                                                                
        }    
        return  "not all pass"                                                                             
    }      
    console.log(allPass([30,70,80,90,100])) ;          
         
                                                    