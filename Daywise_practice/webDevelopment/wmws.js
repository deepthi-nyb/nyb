let obj={};
let obj1={};
let obj2={};
let wm= new WeakMap();
wm.set(obj,"private data");
wm.set(obj1,"personal data");
wm.set(obj2,"secret data");
console.log(wm);
console.log(wm.get(obj));
console.log(wm.get(obj1));
console.log(wm.get(obj2));
console.log(wm.has(obj1));
console.log(wm.delete(obj1));
console.log(wm.has(obj1));
let obj3= {};
let obj4 = {};
let weakSet = new WeakSet();

weakSet.add(obj3);
weakSet.add(obj4);
console.log(weakSet.has(obj3));  

weakSet.delete(obj1);
//console.log(weakSet.clear());
let salaryMap=new WeakMap();
let emp1={name:"jyoti"};
let emp2={name:"sita"};

salaryMap.set(emp1,20000);
salaryMap.set(emp2,40000);

function getsal(emp){
    return salaryMap.get(emp) || "Not Found" ; 
}
console.log(getsal(emp1));
let emp3={name:"sunitha"}
console.log(getsal(emp3));

//
let emp4={name:"gita"}
let emp5={name:"rekha"}

let empMap= new WeakMap()

empMap.set(emp4,30000);
empMap.set(emp5,60000);
function hasEmp(emp){
return empMap.has(emp4);
}
console.log(hasEmp(emp5));
//
let stuMarks=new Map();
stuMarks.set("rani",85);
stuMarks.set("rekha",75);
stuMarks.set("roja",65);

console.log(stuMarks.get("roja"));

console.log(stuMarks.has("rekha"));

console.log(stuMarks.delete("roja"));

//console.log(stuMarks.clear());