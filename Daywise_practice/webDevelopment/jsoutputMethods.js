//1--console output
console.log('logged to console');//logs o/p to the browser console

//2--- alert
alert('Hello from alert!');//shows a popup alert box

//3--document write
document.write('This is document.write');//writes directly 

document.write("Good morning");//
alert("This is alert message");//to display alert message

//4inner html
//InnerHtml(DOM method)//updates content of an html element
document.getElementById('demo').innerHTML=('Updated using innerHTML');

//5console error and warning
console.error('This is an error');//Displatys error 
//6
console.warn('This is warning');

//7--prompt
a=prompt("Enter your name");
console.log(a);

//8--confirm--	Shows a confirm box with OK/Cancel
b=confirm('Are you sure,you want to delete the file permanently');
console.log(b);

//9 console.table()	Displays tabular data in the console
console.table([{name:'John',age:30},{name:'Jane',age:25}])

//1. Log Numbers 1 to 5 in the Console
for(let i=1;i<=5;i++){
    console.log(i);
}
//2. Show a Welcome Alert
 alert("welcome to our website!");

 //3. Prompt User for Name and Greet in Console
 let name= prompt('Enter your name');
 console.log("Hello,"+ name +'!');

 //4. Use document.write() to Display a Message
 document.write('it is written using document.write');

  //5. Use innerHTML to Show a Message
  document.getElementById('hello').innerHTML='Hello! this is updated using innerHTML';

  // 6. Use confirm() to Get User Decision
  let answer=confirm('Do you want to delete this!')
 if(answer){console.log('user confirmed')}
        else {console.warn('user cancelled')}
    
  //7. Use console.table() for an Array of Objects      
  let users=[{name:'Alice',age:32},{name:'Bob',age:28}]
  console.table(users);

  //
  let value = prompt("Enter age:");
//document.write(value);
console.log(value);
document.write("You entered: " + value);


