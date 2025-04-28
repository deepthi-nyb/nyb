var obj={
    name:"sudha",
    age:20,
    city:"hyd",
    play:function(){
        console.log(this);
        console.log(this.name);
        console.log(this.age);
    }
}
console.log(obj.name);
console.log(obj.play());
console.log(this);

var obj={
    name:"sudha",
    age:20,
    city:"hyd",
    play:()=>{
        console.log(this.name);
      
    }
}
console.log(obj.play());
var obj={
    name:"sudha",
    age:20,
    city:"hyd",
    play:function(){
        console.log(this);
        console.log(this.name);
        console.log(this.age);
        var hello=()=>{
            console.log(this.name);
            console.log(this.age);
        }
        hello();
    }
}
console.log(obj.name);
console.log(this);
console.log(obj.play());

var obj2={
    name:"kumar",
    age:20,
    play:function(a,b,c,d){
        console.log(a+b+c+d);
        console.log(this);
        console.log(this.name);
        console.log(this.age);
    }
}
console.log(obj2.name);
console.log(obj2.age);
console.log(this);
console.log(obj2.play());
//change of this reference
obj.play.call(obj2,1,2,3,4);
obj.play.apply(obj2,[1,2,3,4]);
obj.play.bind(obj2,1,2,3,4)();