const curDate=new Date();
console.log(`현재:${curDate}`);

const newDate=new Date(2025, 11, 25, 18, 30, 50);
const dateFormat=`${newDate.getFullYear()} - ${newDate.getMonth()+1} - ${newDate.getDate()} 
                    ${newDate.getHours()}:${newDate.getMinutes()}:${newDate.getSeconds()}}`;
console.log(`dateFormat:${dateFormat}`);    

const date1=new Date(`2025-02-01`);
const date2=new Date(`2025-02-25`);
const dateDiff=date2.getTime() - date1.getTime();
console.log(`dateDift:${dateDiff}`);
const interveal = dateDiff / (24*60*60*1000);
console.log(`두 날짜의 차이는 ${interveal}일 입니다.`);