 //throttling and debouncing
 //Q1. Create a debounce function that delays API call until the user stops typing for 500ms.
 function debounce(){
    setTimeout(()=>{
     console.log('debounce function')
    },500)
 }
 debounce();

 //

 function deBounce(fn,delay){
    let timeoutId;
    return function(...args){
        clearTimeout(timeoutId);
       timeoutId=setTimeout(()=>{
        fn.apply(this,args);
       },1000)
    }
 }
 
 