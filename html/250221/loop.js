let num=1;

while(num<=10){
    console.log(num);
    num++;
}

do{
    console.log("==========");
}while(false);

for(let i=0; i<11; i++){
    console.log(i);
}

//구구단

for(let dan=2; dan<10; dan++){
    for(let col=1; col<10; col++){
        console.log(`${dan} * ${col} = ${dan*col}`);
    }
    console.log("==========");
}

let fruit=["apple", "banana", "cherry", "dangam", "mango", "melon", "orage","peach"];
for(i=0; i<fruit.length; i++){
    console.log(fruit[i]);
}
for(let idx in fruit){
    console.log(idx + ":" + fruit[idx]);
}

let person={
    name:"김수호",
    age:20,
    height:180,
    weight:100,
};
for (let attr in person){
    console.log(attr + ":" + person[attr]);
}

for(let j=1; j<=3; j++){
    console.log('j='+j);
    for(let i=1; i<11; i++){
        console.log('   i='+i);
        if(i===5){
            break;vg
        }
    }
}

for(let j=1; j<=3; j++){
    console.log('j='+j);
    for(let i=1; i<11; i++){
        console.log('   i='+i);
        if(i===5){
            break;
        }
        console.log('----------');
    }
    console.log('==========')
}

for(let j=1; j<=3; j++){
    console.log('j='+j);
    for(let i=1; i<11; i++){
        console.log('   i='+i);
        if(i===5){
            continue;
        }
        console.log('----------');
    }
    console.log('==========')
}
let sum=0
for(let i=1; i<=100; i++){    
    sum+=i;
}
console.log(sum);

let sum1=0
for(let i=1; i<=10; i++){    
    console.log(`i: ${i}, sum: ${sum1} + ${i} = ${sum1+i}`);
    sum1+=i;
}
