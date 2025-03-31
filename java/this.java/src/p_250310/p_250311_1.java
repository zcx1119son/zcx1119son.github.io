package p_250310;

import java.util.*;

public class p_250311_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] array= new int[5];
		System.out.print("5개의 숫자를 입력하세요.");
		Scanner scanner1=new Scanner(System.in);
		for(int i=0; i<array.length; i++) {
			String strNumber=scanner1.nextLine();
			int number=Integer.parseInt(strNumber);
			array[i]=number;	
		}
		System.out.print("입력한 배열은 : ");
		for(int i=0; i<array.length; i++) {
			System.out.print(array[i]+" ");
		}
		Scanner scanner2=new Scanner(System.in);
		String strNumber=scanner2.nextLine();
		int number=Integer.parseInt(strNumber);
		int count=0;
		for(int i=0; i<array.length; i++) {
			if(number==array[i]) {
					System.out.println(i+"번째 인덱스에 있습니다.");
			}else {
				count++;
				if(count==array.length) {
					System.out.println("배열에 없는 값입니다.");
				}
			}	
		}
	}

}
