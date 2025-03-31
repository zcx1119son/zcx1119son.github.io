let food="melon";
switch (food) {
    case "melon" :
        console.log("green fruit");
        
    case "apple" :
        console.log("red fruit");
        
    case "banana" :
        console.log("yellow fruit");
       
    case "carrot" :
        console.log("vegetable");
        
    default:
        console.log("It's not fruits and vegetables.");
}

let score=90;
if(score>=90&& score<=100){
    console.log("A++");
}
switch(score){
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
        console.log("A++");
        break;
    default:
        console.log("not A++");
        break;
}