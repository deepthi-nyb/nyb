//1. Click Event:
//Create a button. When the user clicks the button, display an alert with the message:
//"Button clicked!"

let button=document.getElementById('button');
button.addEventListener('click',function(){
    alert('Button clicked');
})
//Create a div that shows the text "Mouse is over me!" in the console when the mouse hovers over it.
let div=document.getElementById('hoverBox');
div.addEventListener('mouseover',function(){
    console.log('Mouse is over me!');
});

//3. Keypress Event:
//Listen for any keypress on the input box and log the pressed key in the console.

let input=document.getElementById('inputbox');
input.addEventListener('keydown',function(event){
    console.log('key pressed: ',event.key);
});
//4. Input Event with Debouncing (Bonus):
//When the user types in an input box, wait 500ms after they stop typing and then log the input value.

let input4=document.getElementById('debounceinput');
let timeoutid;
input4.addEventListener('input',function(){
   clearTimeout(timeoutid);

   timeoutid=setTimeout(() => {
    console.log('input value after 500ms',input4.value)
   }, 500);
});

//5. Multiple Events:
//Add two event listeners to a single button — one for click and one for dblclick — to log different messages.
let multibutton=document.getElementById('multibutton');
multibutton.addEventListener('click',function(){
    console.log('Single Click');
});
multibutton.addEventListener('dblclick',function(){
    console.log('Double Clicked');
})

//6. Remove Event Listener:
//Add an event listener to a button that can be removed when another "Remove Listener" button is clicked.

const mainbtn=document.getElementById('mainbutton');
const rmvbtn=document.getElementById('remover');

  function handleClick() {
    console.log('Main button clicked');
  }

mainbtn.addEventListener('click',handleClick());
rmvbtn.addEventListener('click',function(){
    mainbtn.removeEventListener('click',handleClick());
    console.log('click listener renoved from main button');
});



//promises
const isSuccessful=true;

const promise=new Promise((resolve,reject)=>{
   if(isSuccessful){
    resolve('success');
   }
   else{reject('failure')}
});

promise
.then(result=>console.log(result))
.catch(error=>console.log(error));

// 2. Promise.resolve and Promise.reject
// Question:
//Use Promise.resolve() and Promise.reject() to create a resolved and a rejected promise.
Promise.resolve('Resolved directly').then(console.log);
Promise.reject('Rejected directly').catch(console.log);

//3. Promise.all
//Question:
//Use Promise.all to run these promises and log the result when all are fulfilled:
const p1 = Promise.resolve(10);
const p2 = Promise.resolve(20);
const p3 = Promise.resolve(30);

Promise.all([p1,p2,p3])
.then(values=>console.log(values))
.catch(err=>console.log(err))

//
const p4=Promise.resolve(10);
const p5=Promise.reject(20);
const p6=Promise.resolve(30);

Promise.all([p4,p5,p6])
.then(values=>console.log(values))
.catch(err=>console.log(err));

//4. Promise.race
//Question:
//Use Promise.race to log the first settled promise.

const fast=new Promise(resolve=>setTimeout(()=>resolve('fast'),100));
const slow=new Promise(resolve=>setTimeout(()=>resolve('slow'),300));

Promise.race([fast,slow])
.then(result=>console.log(result));

// 5. Promise.allSettled
//Question:Run promises with mixed results using Promise.allSettled.
const p7=Promise.resolve('Finished');
const p8=Promise.reject('Oops');
const p9=Promise.resolve('success');

Promise.allSettled([p7,p8,p9])
.then(results=>console.log(results))

// 6. Promise.any
//Question:
//Use Promise.any to return the first fulfilled promise.

const p10=Promise.reject('Fail');
const p11=Promise.resolve('Wins');
const p12=Promise.resolve('Also wins');

Promise.any([p10,p11,p12])
.then(resolve=>console.log(resolve))
.catch(err=>console.log(err));