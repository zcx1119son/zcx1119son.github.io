package test_250310;

import java.util.*;

public class BaseBallGame {

	public static void main(String[] args) {
		String[] team= {"이진영", "최인호", "플로리얼", "노시환", "채은성", "안치홍", "임종찬", "최재훈", "심우준"};
		int[] hit= new int[10];
		double avgArray[]=new double[10];
		int count=1;
		int array=0;
		Baseball baseball = new Baseball();
		for(int i=1; i<10; i++) {
		for(int outCount=0; outCount<3; outCount++) {
			System.out.println("------------------------------");
			System.out.println(count+"타석 "+(array+1)+"번째타자 :"+team[array]+" 타율: "+avgArray[array]);
			int humanNumber=baseball.human();
			int computerNumber=baseball.computer();
			if(humanNumber==computerNumber) {
				System.out.println("안타"); outCount--;
				hit[array]+=1; 
			}else {
				System.out.println((outCount+1)+"아웃");
			}
			double avg=(double)(hit[array]*1000/count)/1000;
			avgArray[array]=avg;
			array++;
			if(array==9) {
				array-=array;
				count++;
			}
		}System.out.println(i+"회 종료");
		System.out.println("------------------------------");
		}System.out.println("게임 종료");
	}
}
class Baseball{
	public int human() {
		boolean a=true;
		int human=0;
		while(a) {
			System.out.print("1부터 10까지의 숫자를 입력해 주세요.");
			Scanner scanner =new Scanner(System.in);
			String Str= scanner.nextLine();
			human=Integer.parseInt(Str);
			if(human<1||human>10) {
				System.out.println("1부터 10까지 다시 입력해주세요.");
			}else {
				a=false;
				}
			}
		System.out.println("내가 입력한 숫자는 "+human);
		return human;
	}
	public int computer() {
		Random random=new Random();
		random.setSeed(System.currentTimeMillis());
		int computer=random.nextInt(10)+1;
		System.out.println("컴퓨터가 입력한 숫자는 "+computer);
		return computer;
	}
}
