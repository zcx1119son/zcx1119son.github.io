package ch02.sec13;

import java.util.Scanner;

public class ScannerExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner=new Scanner(System.in);
		
//		System.out.print("x 값 입력해 주세요>>> ");	
//		String strX=scanner.nextLine();
//		int x=Integer.parseInt(strX);
//		System.out.println();
//		
//		System.out.print("y값 입력해 주세요>>>");
//		String strY =scanner.nextLine();
//		int y=Integer.parseInt(strY);
//		
//		int result = x+y;
//		System.out.println("x + y = "+result);
		
		while(true) {
			System.out.print("입력하세요>>>");
			String data =scanner.nextLine();
			if(data.equals("q")) {
				break;
			}
			System.out.println("입력받은 문자열:"+data);
			System.out.println();
		}
		System.out.println("입력 종료");
	}
}