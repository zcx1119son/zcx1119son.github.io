function gugudan(){
    for(let i=1; i<=9; i++){
        console.log(`3 * ${i} = ${3*i}`);
    }
}
gugudan();

const gugudan3= function gugudan(){
    for(let i=1; i<10; i++){
        console.log(`3 * ${i} = ${3*i}`);
    }
};
gugudan3();

const anonymous_gugudan= function(){
    for(let i=1; i<10; i++){
        console.log(`3 * ${i} = ${3*i}`);
    }
};
anonymous_gugudan();

const gugudan=()=>{
    for(let i=1; i<10; i++){
        console.log(`3 * ${i} = ${3*i}`);
    }
};
gugudan();

function gugudan(dan){
    for(let i=1; i<10; i++){
        console.log(`${dan} * ${i} = ${dan*i}`);
    }
};
gugudan(2);
console.log("===========");
gugudan(9);

function sum(num1=0, num2=0){
//function sum(){
    console.log(`${num1} + ${num2} = ${num1 + num2}`);
    //console.log("파라미터 없습니다.");
};

//sum(10, 20);
sum();

function sum(num1, num2){
    //let result=num1 + num2;
    //console.log(`result=${result}`);
    //return result;
    return num1+num2;
}
const value1= sum(10, 20);
console.log(`호출 된 value1=${value1}`);

console.log(result);

function getArrayMaxNumber(arr){
   let result;
   for(i=0; i<arr.length-1; i++){
    if(arr[i]>arr[i+1]){
        result=arr[i];
    }
    else result=arr[i+1];   
   }
   return result;
}
const max=getArrayMaxNumber([10, 50, 30, 20, 60, 40]);
console.log(max);

function getArrayMaxNumber(arr){
    let result=arr[0];
    for(i=1; i<arr.length-1; i++){
     if(result>arr[i]){
         result=arr[i];
        }
    }
    return result;
 }
 const min=getArrayMaxNumber([10, 50, 30, 40, 70, 20]);
 console.log(min);