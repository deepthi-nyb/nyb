

import d,{login} from './module1.js'
login();
console.log(d);


import {signup} from './module2.js'
signup();

import {add,sub} from './module2.js'
console.log(add(2,3));
console.log(sub(6,4));
import greet from './module2.js'
console.log(greet('Alice'));

//Destructuring
var arr=[1,2,3]
var [a,b,e]=arr
console.log(a,b,e)