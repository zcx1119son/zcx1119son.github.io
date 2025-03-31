package p_250310;

import java.util.Random;
import java.util.Scanner;

public class example {

	public static void main(String[] args) {
	// TODO Auto-generated method stub
		String team[]= {"이진영", "최인호", "플로리얼", "노시환", "채은성", "안치홍", "임종찬", "최재훈", "심우준"};
		Baseball baseball = new Baseball();
		int sum=0;
		for(int i=1; i<4; i++) {
			for(int j=0; j<team.length; j++){
					System.out.println((j+1)+"번 타자 :"+team[j]);
					int h= baseball.human();
					int c= baseball.computer();
					int count = baseball.out(h, c);
					System.out.println(count+"아웃");
			}System.out.println(i+"회종료");
			}System.out.println("경기종료");
	}
}
class Baseball{
	int i;
	int j;
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
		System.out.print("내가 입력한 숫자는 "+human+", ");
		return human;
	}
	public int computer() {
		Random random=new Random();
		random.setSeed(System.currentTimeMillis());
		int computer=random.nextInt(10)+1;
		System.out.println("컴퓨터가 입력한 숫자는 "+computer);
		return computer;
	}
	public int out(int i, int j) {
		int count = 0;
		if(i==j) {
			System.out.println("안타"); 
		}else {count=1;}
		return count++;
	}
}