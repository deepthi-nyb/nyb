

// try {
//     console.log('a);
// }

// catch(error){
//     console.log(error);
// }

// finally{
//     console.log('This is a final block');
// 


try{
let result=x+10;
}catch(error){
  console.log('Error Caught:', error.message);
}finally{
    console.log('cleanup fimished');
}

try{
console.log('hello');
}catch(error){
  console.log('Error Caught:', error.message);
}finally{
    console.log('cleanup fimished');
}

try{
console.log(hi);
}catch(error){
    console.log('Error Caught :', error.message);
}finally{
    console.log('resolved');
}

//error customization

 function divide(a,b){
    if(b===0){
        throw new Error('Divisible by zero not allowed');
    }
    return a/b;
 }

 try{
    console.log(divide(10,0));
 } catch(err){
    console.log('Error :',err.message);
 }finally{
    console.log('Divide with number other than 0');
 }

var age=17;

try{
    if(age<18){
   throw new Error('You are not allowed to vote');
    }
} catch(err){
    console.log('Error :',err.message);
}

var obj1={};

//console.log(obj1.job.designation);
console.log(obj1.job?.designation);

var obj={
    name:'raju',
    job :{company:'Nyb',
        role:'developer',
        city:'Hyd'}
}
console.log(obj.name);
console.log(obj.job.company);
console.log(obj.job.designation);
console.log(obj?.country);
console.log(obj.country?.location);
console.log(obj.job.role);
console.log(obj.job?.role);
//json.stringify,json.parse

var obj2={
    name: 'gita',
    age:20,
    city:'Hyd'
}
console.log(obj2);
var jsonObj=JSON.stringify(obj2);
console.log(jsonObj);
var normalObj=JSON.parse(jsonObj);
console.log(normalObj);

var name='sita';

var obj3={
    name:name
}
console.log(obj3);

var name1='rita';
var obj4={
    name1
}
console.log(obj4);