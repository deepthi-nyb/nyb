//function  declaration
function hello(){ var a=10;
    var b=10;
    console.log(a)
    console.log(b)
}
hello();

//function expression
//1.named expression
//2.anonymous Expression
//3.arrow expression

var hi= function hi(){var x=20;
                     var y=10;
                     console.log(x*y);
                     console.log(x);
                     console.log(y);
}
hi();

var a= function(){  var a=10;
    var b=10;
    console.log(a+b);
}
a();

var a= function(){  var a=10;
    var b=5;
    console.log(a-b);
}
a();

var a= function(){  var a=10;
    var b=10;
    console.log(a*b);
}
a();

var b=()=>{var d=5;
           var e=5;
           console.log(d*e);

}
b();

function hi() {var c=15;
               var d=15;
               console.log(c*d);
               return('This is a function');
}

hi();
console.log(hi());

function hi() {var c=15;
    var d=15;
    return('This is a function');
    console.log(c*d);
   
}

hi();
console.log(hi());

var calling= hi();
