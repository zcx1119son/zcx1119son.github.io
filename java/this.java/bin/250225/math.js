const num=10.42;
console.log(Math.floor(num));
console.log(Math.ceil(num));
console.log(Math.round(num));

const r=Math.random();
console.log(`r:${r}`);

let num1=Math.random()*20;
console.log(`1num1: ${num1}`);
num1= Math.floor(num1);
console.log(`2num1: ${num1}`);
num1=num1+1;
console.log(`3num1: ${num1}`);
console.log(`0에서 20사이의 값 하나를 골라줘:
    ${Math.floor(Math.random()*20)+1}`
);

let num2=0.999;
console.log(`1num2: ${num2}`);
num2=num2*20;
console.log(`2num2: ${num2}`);
num2=Math.floor(num2);
console.log(`3num1: ${num2}`);
num2=num2+1;
console.log(`3num1: ${num2}`);

function getLottoRandom(value){
    return Math.floor(Math.random()*value)+1;
}

function comparArr(a,b){
    return a-b;
}

let arr=[];
for(i=0; i<6; i++){   
    const lottoRandom=getLottoRandom(45);
    arr[i]=lottoRandom;
    for(j=0; i-j; j++){
        if(arr[i]==arr[j])
            arr[j]= getLottoRandom(45);
    }
    
}
arr.sort(comparArr);
console.log(`이번주 로또 번호는 : ${arr}`);