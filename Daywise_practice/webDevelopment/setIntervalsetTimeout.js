var interval=setInterval(()=>{
    console.log('executes repeatedly after every two seconds');
},2000);
var timeout=setTimeout(()=>{
    console.log('executes once after 2 seconds');
},2000);
clearInterval(interval);
clearTimeout(timeout);
function delay(a,b){
    console.log(a+b);
    console.log('delay fun');
}
let interval3=setInterval(delay,2000,2,3);
//clearInterval(interval3);
setTimeout(()=>{
    clearInterval(interval3);
    console.log('interval cleared');
},6000);
//
// function hello(){
//  console.log('hello');
// }
// var interval2=setInterval(hello,1000);
// setTimeout(()=>{
//  clearInterval(interval2);
//  console.log('stopped');
// },6000);
//Create a counter that prints numbers 1 
// to 5 every second using setInterval.
var count=1;
var interval4=setInterval(() => {
    console.log(count);
    count++
    if(count>5){
     clearInterval(interval4);
    }
},1000);
//Use setInterval to print "Tick" 3 times, 
// once per second, then print "Done".
function tick(){
    console.log('tick');
}
var interval5=setInterval(tick,4000);
setTimeout(()=>{
    clearInterval(interval5);
    console.log('Done');
},12000);
let tickcount=0;
var interval6=setInterval(()=>{
    console.log('Tick');
    tickcount++;
    if(tickcount===3){
        clearInterval(interval6);
        console.log('done');
    }
},1000);
//Print "Start", 
// then after 2 seconds print "End".
console.log('start');
setTimeout(()=>{
  console.log('end');
},4000);
//Use nested setTimeout to print 
// numbers from 1 to 5, one per second.
for(let i=0;i<=5;i++){
setTimeout(()=>{
    console.log(i);
},i*1000);
}
//Print "Loading" after
//  3 seconds delay using setTimeout.
setTimeout(()=>{
    console.log('Loading...');
},3000);