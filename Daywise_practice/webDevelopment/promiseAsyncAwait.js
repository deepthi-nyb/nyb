var myprom=new Promise((resolve,reject)=>{
    var success=true;
    if(success){
        resolve('operation susccessful');
    }
    else {reject('operation failure');}
})


myprom
.then((result)=>{
  console.log('result');
})
.catch((error)=>{
   console.log('error');
})

// function fetchdata(){
//     return new Promise((resolve)=>{
//      setTimeout(()=>{
//      resolve('Data received');
//      },2000)
//     })
// }

// async function getdata(){
//     console.log('fetching data....');
//     var result=await fetchdata();
//     console.log(result);
// };

// getdata();

function fetchdata(){
    return new Promise((resolve)=>{
        setTimeout(()=>{
         resolve('Data received');
        },2000)
    })
}

async function getdata(){
 console.log('fetching data....');
 var result=await fetchdata();
 console.log(result);
}

getdata();

function getuser(){
    return new Promise((resolve)=>{
    setTimeout(()=>resolve('John Doe'),1000)
    })
}
getuser()
.then((user)=>{
    console.log(user);
})
.catch((err)=>{
  console.log(err);
})

//using async and await

// async function showuser(){
//     try{var user=await getuser();
// console.log(user);}
// catch(err){
//  console.log(err);
// }

// }
// showuser();

async function showuser(){
    try{
    var user= await getuser();
    console.log(user);
    }
    catch(error){
        console.log(error)
    }
}
///promises
function getuser1(){
    return new Promise((resolve)=>{
     setTimeout(()=>{
        resolve('peter pan');
     },2000)
    })
}
getuser1()
.then((user)=>{console.log(user)})
.catch((error)=>{console.log(error)})

//using async and await

async function showuser1(){
    try{
    var user=await getuser1();
    console.log(user);
    }
    catch(err){
     console.log(err);
    }
}