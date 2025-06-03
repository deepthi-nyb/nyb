//throttling
function throttlling(fn,delay){
     isthrottle=false;
     return function(...args){
        if(!isthrottle){
            fn.apply(this,args)
            isthrottle=true;
            setTimeout(()=>{
            isthrottle=false;
            },delay)
        }
     }
}
function logScroll(){
    console.log('user logged at ',new Date().toLocaleTimeString());
}

const throttleScroll=throttlling(logScroll,1000);
window.addEventListener('scroll',throttleScroll);

//Debouncing

function debounce(fn,delay){
   let timeoutId;
   return function(...args){
    clearTimeout(timeoutId);
    timeoutId=setTimeout(()=>{
       fn.apply(this,args)
    },delay)
   }
}

function searchQuery(value){
console.log('Searching for ',value);
}

const debounceSearch=debounce(function(e){
 searchQuery(e.target.value)
},500);

document.getElementById('searchbox').addEventListener('input',debounceSearch);

//Write a debounce function
//Question:
//Write a custom debounce function and use it with a button click.
function debounce(fn,delay){
     let timer;
     return function(...args){
        clearTimeout(timer);
        timer=setTimeout(()=>{fn.apply(this,args)},delay)
     }
}

function click(){
    console.log('Button clicked');
}

const Buttondebounce=debounce(click,2000);
document.getElementById('click').addEventListener('click',Buttondebounce);
//4. Write a throttle function
//Question:
//Write a custom throttle function that logs scroll position only once every 500ms.
function throttle(fn,delay){
    isthrot=false;
    return function(...args){
        if(!isthrot){
            fn.apply(this,args)
            isthrot=true;
            setTimeout(()=>{isthrot=false},delay)
        }    }

}
function scroll(){
    console.log('scrolled at',new Date().toLocaleTimeString());
}

const throtScroll=throttle(scroll,600);
window.addEventListener('scroll',throtScroll);

//
function debounce(fn,delay){
    let timer;
    return function(...args){
        clearTimeout(timer);
        timer=setTimeout(()=>{fn.apply(this,args)},delay);
    }
}
let count=0;
const debounceCount=debounce(()=>{
    count++;
    console.log('Api count is',count);
},100)
debounceCount();
debounceCount();
debounceCount();

var person={name:'sai',}
var copy={...person };
console.log(copy);
////////////////////////////////////
//Basic try…catch Usage
//Question:
//Write a function parseJSONSafe that takes a JSON string, attempts
 //to parse it, and returns the resulting object. If parsing fails,
 // the function should catch the error and return null.
function parseJSONSafe(jsonstring){
    try{
        const result=JSON.parse(jsonstring);
        return result
    }
    catch(error){
        return null;
    }
}
console.log(parseJSONSafe('{"x":10}'));
console.log(parseJSONSafe('invalid json'));

// Create a curried function calculateVolume(l)(w)(h) that returns the volume of a box (length × width × height).
//  Call the function with three arguments and print the result.
 
function calculateVolume(length){
    return function hii(width){
        return function bye(height){
            return length * width * height
        }
 
    }
}
console.log(calculateVolume(10)(20)(30));

var string="  Error handlings for js  "
function formatMessage(str){
    let trimmedstr=string.trim();
    console.log(trimmedstr);
    let upperstr=trimmedstr.toUpperCase();
    console.log(upperstr)
    console.log(upperstr.startsWith("hello"))
    let replacestr=upperstr.replace("ERROR","ISSUE")
    console.log(replacestr);
    return replacestr;
}
formatMessage(string)
 
var spilt=string.split(' ')
console.log(spilt);

// 2. Throwing and Catching a Custom Error
// Question:
// Create a function divide(a, b) that divides a by b. If b is zero, it should throw a custom Error 
// with the message "Cannot divide by zero". Then call divide(10, 0) inside a try…catch block and log the error message.
//error customization
// function divide(a,b){
//     if(b===0){
//         throw new Error('Cannot divide by zero');
//     }
//     return a/b
// }

// try{const result=divide(10,0)
//     console.log('Result: ',result)
// }
// catch(err){
//     console.log('Error caught: ',err.message)
// }

function divide(a,b){
    if(b===0){
        throw new Error('Cannot divide by zero');
    }
    return a/b;
}
//console.log(divide(10,2));
//console.log(divide(10,0));

try{
    const result=divide(10,0);
    console.log('Result: ',result);
}
catch(err){
    console.log('Error Caught: ',err.message)
}
try{
    const result=divide(10,2);
    console.log('Result: ',result);
}
catch(err){
    console.log('Error Caught: ',err.message)
}