//how to copy 
//primitive data types
//deep copy
var M=10;
var N=M;//copy by using assignment operator
console.log(M);//10
console.log(N);//10
M=20;
console.log(M);//20
console.log(N);//10-as memory location is different changes wont reflect

//reference data types
var original={
    name:'gita',
    age:30,
    city:'Hyd'
}
var copy =original;
console.log(original);
console.log(copy);
original.age=31;
console.log(original);
console.log(copy);//as memory location is same changes will update 
copy.name="sita";
console.log(original);
console.log(copy);//viceversa
var original={
    name:'gita',
    age:30,
    city:'Hyd',
    job:{
        role:"developer",
        dept:"IT",
        salary:50000
    }
}
console.log(original);
original.age=35
console.log(original);//32
console.log(copy);//31
var copy=original;
console.log(original);
console.log(copy);
//deep copy
var original={
    name:'latha',
    age:20,
    city:'Hyd',
    job:{
        role:"developer",
        dept:"IT",
        salary:30000
    },
    arr:[1,2,3]
}
//json parse copy method
var copy=JSON.parse(JSON.stringify(original));
console.log(original);
console.log(copy);
original.arr[0]=10;
console.log(original);
console.log(copy);
var original={
    name:'sunitha',
    age:25,
    city:'Hyd',
    job:{
        role:"developer",
        dept:"IT",
        salary:40000
    },
    arr:[1,2,3],
    play:function(){
        console.log("Hi,How are you");
    }
}
var copy=original;
console.log(original);
console.log(copy);
var copy=JSON.parse(JSON.stringify(original));//drawback is json cant handle functions and methods 
console.log(original);
console.log(copy);

//lodash.clone deep method
//var copy=lodash.clonedeep(original);// so to overcome we use lodash.clonedeep 
console.log(original);
console.log(copy);

//shallow copy

var original={
    name:'likitha',
    age:28,
    city:'Blore',
    job:{
        role:"developer",
        dept:"IT",
        salary:60000
    },
    arr:[1,2,3],
    play:function(){
        console.log("Hi,How are you");
    }
}
//ES-5
var copy=Object.assign({},original);//ES-5
console.log(original);
console.log(copy);
original.name="smitha";
console.log(original);
console.log(copy);
copy.city="mumbai";
console.log(original);
console.log(copy);

//ES-6
var original={
    name:'renuka',
    age:20,
    city:'chennai',
    job:{
        role:"developer",
        dept:"IT",
        salary:40000
    },
    arr:[1,2,3],
    play:function(){
        console.log("Hi,How are you");
    }
}

var copy={
    ...original
}

console.log(original);
console.log(copy);








