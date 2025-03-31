package p_250305;

import java.util.Scanner;

public class p_250305_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner=new Scanner(System.in);
		System.out.print("input 값을 넣어주세요.");
		String Input=scanner.nextLine();
		int input=Integer.parseInt(Input);
		
		int a=11;
		int b=14;
		
		System.out.println("변경 전 input:"+input+ ":a:"+a+":b:"+b);
		
		if(input==0) {
			a=5;
		}else {
			b=a+3;
		}
		System.out.println("a:"+a+" b:"+b);
	}

}
