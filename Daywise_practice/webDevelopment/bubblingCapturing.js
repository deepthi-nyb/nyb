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


/////////////////
//
var btn=document.getElementById('btn');
//adding event listener
//btn.addEventListener(event,function,false)//default bubbling
//btn.addEventListener(event,function,true)//capturing
// btn.addEventListener('click',function(){
//      alert('this is alert message');
// })
var fun=function(){
     console.log('this is console message');
}
var fun1=function(){
     console.log('this is second message');
}

btn.addEventListener('click',fun1)//bubbling 

var div=document.getElementById('divcolor');
div.addEventListener('mouseover',function(){
    div.style.backgroundColor="red";
},true)