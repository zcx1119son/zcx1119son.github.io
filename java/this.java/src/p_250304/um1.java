package p_250304;

import java.util.Scanner;

public class um1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner5=new Scanner(System.in);
		System.out.print("키가 몇m인지 입력:");
		String strM=scanner5.nextLine();
		double m=Double.parseDouble(strM);
		
		
		int valueCm=(int)(m*100);
		System.out.printf("키 %.2fm를 cm로 바꾸게 되면 %dcm로 나옵니다.\n", m, valueCm);
	}

}
