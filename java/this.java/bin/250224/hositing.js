console.log(num);
var num=10;
//console.log(num);

//var num;
//console.log(num);
//num=10;

printHello();
function printHello(){
    console.log("Hello May");
}

function printHello(){
    console.log("Hello May");
}
printHello();

printHello();
var printHello = () => {
    console.log("Hello May");
};

let text="outside";
function printScope(){
    //console.log(text);
    let text ="inside";
    //console.log(text);
}
printScope();

(function init(){
    console.log("----------");
})();

(function sum(num1, num2){
    console.log(`${num1} + ${num2} = ${num1 + num2}`);
})(10,20);