var btn1=document.getElementById('1');
btn1.addEventListener('click',function(){
    alert('button 1 clicked');
});
function greet(){
    console.log('Hello!');
}
var btn2=document.getElementById('2');
btn2.addEventListener('click',greet);
// to remove event listener
//btn2.removeEventListener('click',greet);


var div=document.getElementById('box');
div.addEventListener('mouseover',()=>{
    div.style.background="red";
})
//Add an event listener to show Hello World! in an alert when the button is clicked.
var btn3=document.getElementById('3');
btn3.addEventListener('click',()=>{
    alert('Hello World!');
});

//Add a mouseover event to change the background color of the box to green.
var div1=document.getElementById('box1');
div1.addEventListener('mouseover',()=>{
    div1.style.backgroundColor="green";
});
//Add a dblclick event that hides the paragraph when double-clicked.
var para=document.getElementById('text');
para.addEventListener('dblclick',()=>{
    para.style.display="none";
});
//
//  Intermediate Level
// 4. Key Press Detection
//Add a keydown event to show the pressed key inside the paragraph with id="result".
var input=document.getElementById('input');
input.addEventListener('keydown',function(event){
    document.getElementById('result').textContent="you pressed: "+event.key;
})
/
// 
//

// 
/////////////////////////////////////////////////////////////
//bubbling
document.getElementById('outer').addEventListener('click',()=>{
    console.log('outer')
})
document.getElementById('inner').addEventListener('click',()=>{
    console.log('inner');
})
//Capturing
document.getElementById('outer').addEventListener('click',()=>{
    console.log('outer')
},true)
document.getElementById('inner').addEventListener('click',()=>{
    console.log('inner');
},true)
