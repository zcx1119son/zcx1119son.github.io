package p_250307;

import java.util.Scanner;
import java.util.Random;

public class p_250307_4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] battle= {"가위", "바위", "보"};
		
		System.out.print("0:가위, 1:바위, 2:보 중 선택하세요.");
		Scanner scanner=new Scanner(System.in);
		String str1=scanner.nextLine();
		int number=Integer.parseInt(str1);
		
		String human=battle[number];
		System.out.println("인간이 낸 것은 "+human);
		
		Random random=new Random();
		random.setSeed(System.currentTimeMillis());
		int computerNumber=random.nextInt(3);
		
		String computer=battle[computerNumber];
		System.out.println("컴퓨터가 낸 것은 "+computer);
		
		int z=number-computerNumber;
		switch(z) {
			case 0: 
				System.out.println("비겼다.");
				break;
			case -1:
			case 2:
				System.out.println("인간이 졌다.");
				break;
			default:
				System.out.println("인간이 이겼다.");
				break;
		}
	}
}
