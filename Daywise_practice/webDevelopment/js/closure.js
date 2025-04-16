//closure

function A(){
    return function B(){
        return a+b
    }
}

console.log(A);
console.log(A());
A();
let k=function A(){
    return function B(){
        return a+b
    }
}
console.log(k());

function f1(){
    let c=0;
    return function f2(){
        c++;
    return c;
    }
}
console.log(f1()) ; 
let q=f1();
console.log(q());
console.log(q());
console.log(q());

function fo(){
    let num=0;
    return{
        increment:function() {
            num++;
            console.log("incremented number is",num);
        },
        decrement: function(){
            num--;
            console.log("decremented number is",num);
        }
    };
}



let r=fo();
//console.log(r());
r.increment();
r.decrement();

function CreateStepCounter(step){
    let count=0;
    return function(){
        count +=step;
        return count;
    }
}
let s= CreateStepCounter(3);
console.log(s());
console.log(s());
console.log(s());
console.log(s());

function CreateGreeter(name){
    return function(){
        console.log(`Hello,${name}!`);
    };
}

let greet=CreateGreeter("Deepthi");
greet();
let z=(function factorialIIFE(n){
    if(n===0 || n===1)return 1;
    return n*factorialIIFE(n-1);
})
(7);