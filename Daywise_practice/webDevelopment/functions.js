
// 1.	Create a curried function calculateVolume(l)(w)(h) that returns the volume of a box 
// (length × width × height). Call the function with three arguments and print the result.
function calculateVolume(l){
    return function(w){
        return function(h){
            return l*w*h;
        }
    }
}
console.log(calculateVolume(2)(3)(4));
// Create an object called account with properties: id, type, and balance. Then:
// •	Add a new property currency with any value
// •	Delete the type property
// •	Update the balance value
// •	Iterate through the object and print each key and value in the format "key: value"

var account={
    id:101,
    type:'savings',
    balance:5000
}
account.currency='Indian';
console.log(account);
delete account.type;
console.log(account);
account.balance=8000;
console.log(account);
console.log(Object.keys(account));
console.log(Object.values(account));
console.log(Object.entries(account));
for(key in account){
    console.log(key +':'+ account[key]);
}

var a=10;
var b='20';
console.log(a+b);