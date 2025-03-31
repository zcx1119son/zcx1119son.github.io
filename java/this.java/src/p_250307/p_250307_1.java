package p_250307;

import java.util.Scanner;

public class p_250307_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner=new Scanner(System.in);
		System.out.print("첫번째 정수:");
		String str1 = scanner.nextLine();
		int num1=Integer.parseInt(str1);
		
		System.out.print("첫번째 정수:");
		String str2 = scanner.nextLine();
		int num2=Integer.parseInt(str2);
		
		System.out.print("첫번째 정수:");
		String str3 = scanner.nextLine();
		int num3=Integer.parseInt(str3);
		
		int[] array=new int[3];
		array[0]=num1;
		array[1]=num2;
		array[2]=num3;
		int tmp;
//		//선택정렬
		System.out.println("--------------------");
		System.out.println("선택 정렬");
		for(int i=0; i<array.length; i++) {	
			for(int j=i+1; j<array.length; j++) {
				if(array[i]>array[j]) {
					tmp=array[i];
					array[i]=array[j];
					array[j]=tmp;
				}
			}
			System.out.println("array["+i+"] = "+array[i]);
		}
		//삽입 정렬
		System.out.println("--------------------");
		System.out.println("삽입 정렬");
		for(int i=1; i<array.length; i++) {
			tmp=array[i];
			int j=i-1;
			while(j>=0&&tmp<array[j]) {
				array[j+1]=array[j];
				j--;
			}
			array[j+1]=tmp;
		}
		for(int i=0; i<array.length; i++) {
			System.out.println("array["+i+"] = "+array[i]);
		}
		//버블 정렬
		System.out.println("--------------------");
		System.out.println("버블 정렬");
		 for(int i=1; i<array.length; i++) {
			 for(int j=0; j<array.length-i; j++) {
				 if(array[j]>array[j+1]) {
					 tmp=array[j];
					 array[j]=array[j+1];
					 array[j+1]=tmp;
				 }
			 }
		 }
		 for(int i=0; i<array.length; i++) {
				System.out.println("array["+i+"] = "+array[i]);
		 }
	}

}
