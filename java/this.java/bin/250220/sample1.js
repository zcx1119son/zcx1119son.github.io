let input=prompt('inch 단위의 숫자를 입력하세요.');

let inchVal=Number(input);
let cm=inchVal*2.54;

alert(`${inchVal}inch는 ${cm} cm 입니다.`);