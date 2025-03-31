package p_250228;

import java.util.Scanner;

public class p_250228_13 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		String myName="본인 이름";
//		String myAge="본인 나이";
//		String myHeight="본인 키cm";
//		
//		System.out.println("이름:"+myName+", 나이:"+myAge+", 키:"+ myHeight);
		
		//위에 문제 Scanner를 추가해서 응용
		
		Scanner scanner=new Scanner(System.in);
		
		System.out.print("본인 이름: ");
		String myName=scanner.nextLine();
		
		System.out.print("본인 나이: ");
		String  myAge=scanner.nextLine();
		int getAge=Integer.parseInt(myAge);
		
		System.out.print("본인 키cm: ");
		String  myHeight=scanner.nextLine();
		int getHeight=Integer.parseInt(myHeight);
		
		System.out.println("이름: "+myName+" | 나이: "+getAge+" | 본인 키:"+getHeight+"cm");
	}

}
