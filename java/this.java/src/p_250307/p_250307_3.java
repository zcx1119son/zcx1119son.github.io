package p_250307;

import java.util.Scanner;
import java.util.Random;

public class p_250307_3 {
	//클래스 선행학습
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		RockPapperScissores tmp=new RockPapperScissores();
		tmp.Start();
	}
	
}
class RockPapperScissores{
	public void Start(){
		int number1=ReadNumber();
		switch(number1) {
			case 0:
				System.out.println("가위");
				break;
			case 1:
				System.out.println("바위");
				break;
			case 2:
				System.out.println("보");
				break;
		}
		int number2=ComputerRandom();
		compare(number1, number2);
		
	}
	private int ComputerRandom() {
		Random random=new Random();
		random.setSeed(System.currentTimeMillis());
		int computer=random.nextInt(3);
		switch(computer) {
		case 0:
			System.out.println("컴퓨터가 입력한 숫자: "+computer+"\n가위");
			break;
		case 1:
			System.out.println("컴퓨터가 입력한 숫자: "+computer+"\n바위");
			break;
		case 2:
			System.out.println("컴퓨터가 입력한 숫자: "+computer+"\n보");
			break;
		}
		return computer;
	}
	private int ReadNumber() {
		System.out.println("0부터 2까지 숫자를 입력해주세요.");
		Scanner scanner=new Scanner(System.in);
		String strNumber=scanner.nextLine();
		int number=Integer.parseInt(strNumber);
		return number;
		}
	private void compare(int x, int y) {
		int num1=x;
		int num2=y;
		int z=num1-num2;
		if(z==0) {
			System.out.println("비겼다.");
		}else if(z==-1||z==2) {
			System.out.println("인간이 졌다.");
		}else {
			System.out.println("인간이 이겼다.");
		}
	}
}
