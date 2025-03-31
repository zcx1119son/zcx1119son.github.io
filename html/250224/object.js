const person={
    name:{
        firstName:"Dooly",
        lastName:"Go"
    },
    likes:["apple", "samsung"],
    printHello: function(){
        return "호이";
    },
};

console.log(person);
console.log("========================");
person["friends"]="도우너";
console.log(person);
console.log("========================");
person["name"]="둘리";
console.log["name"]="둘리";
console.log(person);
delete person["likes"];
console.log(person);
console.log("========================");
delete person["friends"];
console.log(person);
console.log("========================");
delete person["printHello"];
console.log(person);
console.log("========================");
delete person["name"];
console.log(person);
console.log("========================");
person["firends"]="도우너";
console.log(person);

console.log(person["name"]);
console.log(person["name"]["firstName"]);
console.log(person["name"]["lastName"]);
//person["name"]["lastName"]=""
//console.log(person["likes"]);

console.log(person["friends"]);

console.log(person["likes"][0]);
console.log(person["likes"][1]);
console.log(person["printHello"]());
console.log("========================");
console.log(person.name.firstName);
console.log(person.name.lastName);
console.log(person.likes);
console.log(person.likes[0]);
console.log(person.likes[1]);
console.log(person.printHello());

let num=10;
let num2=20;
let cpNum=num;
num=100;
console.log(`num:${num}`);
console.log(`num2:${num2}`);
console.log(`cpNum:${cpNum}`);