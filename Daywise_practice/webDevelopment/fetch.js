//get 
fetch('https://jsonplaceholder.typicode.com/posts/',{
    method:'get'
}
)
.then(response=>response.json())
.then(data=>console.log(data))
.catch(error=>console.log(error))

fetch('https://jsonplaceholder.typicode.com/posts/1')
.then(response=>response.json())
.then(data=>console.log(data))
.catch(error=>console.log(error))

//post
var user={
    name:'gita',
    city:'Hyd',
    job:'IT'
}
fetch('https://jsonplaceholder.typicode.com/posts/',{
  method:'post',
  headers:{'Content-type':'application/json'},
  body:JSON.stringify(user)
})
.then(response=>response.json())
.then(data=>console.log(data))
.catch(error=>console.log(error))


//put

var data={
    userid:1,
    id:1,
    title:'this is updated title',
    body:'this is updated body content'
}
fetch('https://jsonplaceholder.typicode.com/posts/1',{
  method:'put'  ,
  headers:{'content-type':'application/json'},
  body:JSON.stringify(data)
})
.then(res=>console.log(res))
.then(data=>console.log(data))
.catch(err=>console.log(err))

//patch
var data1={
    title:'this is a new book'
}
fetch('https://jsonplaceholder.typicode.com/posts/1',{
method:'patch',
headers:{'content-type':'application/json'},
body:JSON.stringify(data1)
})
.then(res=>console.log(res))
.then(data=>console.log(data))
.catch(err=>console.log(err))

//delete

// fetch('https://jsonplaceholder.typicode.com/posts/1',{
//     method:'delete'
// })
// .then(res=>{if(res.ok)console.log('Deleted Successfully');})

