var a=Promise.resolve('hello');
a.then(val=>console.log(val))
.catch(val=>console.log(val))

var b=Promise.reject('hi');
b.then(val=>console.log(val))
.catch(val=>console.log(val))

var c=Promise.all([
    Promise.resolve(1),
    Promise.resolve(2),
    Promise.resolve(3)
])
c.then(result=>console.log(result))
.catch(error=>console.log(error))

var d=Promise.all([
    Promise.resolve(1),
    Promise.reject(2),
    Promise.resolve(3)
])

d.then(result=>console.log(result))
.catch(error=>console.log(error))

//promise race
const p1= new Promise((resolve,reject)=>{setTimeout(()=>reject('error from p1'),100)})
const p2=new Promise((resolve,reject)=>setTimeout(()=>resolve('success form p2'),200))

Promise.race([p1,p2])
 .then(result => console.log("Resolved:", result))
  .catch(error => console.log("Rejected:", error));

//


Promise.allSettled([
  Promise.resolve(1),
  Promise.reject('Oops')
]).then(console.log);

//
Promise.any([
  Promise.reject('A'),
  Promise.reject('B'),
  Promise.resolve('C')
]).then(console.log);



