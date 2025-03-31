package p_250228;

import java.util.Scanner;

public class p_250228_16 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner= new Scanner(System.in);
		System.out.println("곱하고 싶은 두 개의 숫자를 적어주세요.>>>");
		
		System.out.print("첫 번째 숫자:>>>");
		String strX=scanner.nextLine();
		int x=Integer.parseInt(strX);
		
		System.out.print("두 번째 숫자:>>>");
		String strY=scanner.nextLine();
		int y=Integer.parseInt(strY);
		
		int result=x*y;
		System.out.println("입력하신 두 개의 숫자의 곱은: "+result+"입니다.");
	}

}
