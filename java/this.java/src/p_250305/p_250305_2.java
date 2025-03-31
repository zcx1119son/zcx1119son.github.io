package p_250305;

import java.util.Scanner;

public class p_250305_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner=new Scanner(System.in);
		String Input = scanner.nextLine();
		int input=Integer.parseInt(Input);
		
		if(input<0) {
			input=input*-1;
		}
		System.out.println("입력한 input의 절대값:"+input);
	}

}
