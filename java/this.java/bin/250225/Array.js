const fruit=["apple", "banana", "cherry", "mango", "orange"];
console.log(`fruit.length:${fruit.length}`);
for(let i=0; i<fruit.length; i++){
    console.log(`furit[${fruit[i]}]`);
}
fruit.push("peach");
console.log(`furit:${fruit}`);
fruit.push("strawberry");
console.log(`furit:${fruit}`);
fruit.pop();
console.log(`furit:${fruit}`);
fruit.unshift("blueberry");
console.log(`furit:${fruit}`);
fruit.unshift("lemon");
console.log(`furit:${fruit}`);
fruit.shift();
console.log(`furit:${fruit}`);

fruit.forEach(function(f){
    console.log(`1value:${f}`);
});
console.log("===========================");
fruit.forEach(function(f, idx){
    console.log(`2idx:${idx}, value:${f}`);
});
console.log("===========================");
for(let i=0; i<fruit.length; i++){
    console.log(`3idx:${i}, fruit[${i}]:${fruit[i]}`);
}