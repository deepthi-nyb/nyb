function one(nextfunction) {
    console.log('first function');
    window.setTimeout(() => {
        nextfunction();
    }, 2000)
}
function two(nextfunction) {
    console.log('second function');
    window.setTimeout(() => {
        nextfunction();
    }, 4000)
}
function three(nextfunction) {
    console.log('third function');
    window.setTimeout(() => {
        nextfunction();
    }, 6000)
}
function four() {
    console.log('fourth function')
    ;
}

one(() => { two(() => { three(() => { four() }) }) });

function greet(name,callback){
    console.log('hello! '+name);
    callback();
}

greet('Deepthi',function (){
    console.log('callback executed');
});

function fetchData(callback){
    console.log('fetch the data');
    setTimeout(()=>{
      callback();
    },4000)
}

fetchData(()=>{
    console.log('processed the data');
});


function simulateApicall(callback){
    console.log('simulated Api call');
    setTimeout(()=>{
       callback();
    },2000)
}

simulateApicall(()=>{
    console.log('Data loaded');
});