const pw="124";
console.log(`pw.length:${pw.length}`);
if(pw.length<4){
    console.log("비밀번호는 최소 4자리 이상 입력해 주세요.");
}

const email1="test! naver.com";
console.log(`email.includes("@"):${email.includes("@")}`);
if(email.includes("@")===false){
    console.log("1올바른 이메일 형식이 아닙니다.");
}

if(!email.includes("@")){
    console.log("2올바른 이메일 형식이 아닙니다.");
}

const email2="test!naver.com";
console.log(`email2.indexOf("@"): ${email2.indexOf("@")}`);
console.log(`email2.indexOf("."): ${email2.indexOf(".")}`);
console.log(`email2.indexOf("e"): ${email2.indexOf("e")}`);

const str="Hello, Dooly";
console.log(`str.replace("Dooly", "Donur"):${str.replace("Dooly", "Donur")}`);
console.log(`str.replace("o", "a")${str.replace("o", "a")}`);
console.log(`str.replaceAll("o", "a")${str.replaceAll("o", "a")}`);
console.log(`str.toUpperCase():${str.toUpperCase}`);
console.log(`str.toLowerCase():${str.toLowerCase}`);
console.log(`str.substring(0,1):${str.substring(0,1)}`);
console.log(`str.substring(0,5):${str.substring(0,5)}`);
console.log(`str.substring(6, str.length):${str.substring(6,str.length)}`);

const fruit="apple, banana, cherry, mango, orange";
const fruitArr=fruit.split(",");
console.log(`fruitArr.lenght:${fruitArr.length}`);
console.log(`fruitArr[0]:${fruitArr[0]}`);
console.log(`fruitArr:${fruitArr}`);