package ch02.sec09;

public class OperationPromotionExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		byte result1=10+20;
		System.out.println("result1:"+result1);
		
		byte b1=10;
		byte b2=20;
//		byte result2=b1+b2;
		int result3=b1+b2;
//		byte result4=b1+20;
//		byte result5=30+b2;
//		System.out.println("result2: "+result2);
		System.out.println("result3: "+result3);
//		System.out.println("result4: "+result4);
//		System.out.println("result5: "+result5);
		
		short s1=10;
		short s2=20;
		short result6=10+20;
//		short result7=s1+s2;
		int result8=s1+s2;
//		short result9=s1+20;
//		short rssult10=30+s1;
		System.out.println("result6: "+result6);
//		System.out.println("result7: "+result7);
		System.out.println("result8: "+result8);
//		System.out.println("result9: "+result9);
//		System.out.println("result10: "+result10);
		
		byte v1=10;
		int v2=100;
		long v3=1000L;
		
//		int result11=v1+v2+v3;
		long result12=v1+v2+v3;
		System.out.println("result12: "+result12);
		
		int v4=10;
		int result13=v4;
		System.out.println("result13: "+result13);
		
		int v5=10;
		int result14=v5/4.0;
		double result15=v5/4.0;
		System.out.println("result15: "+result15);
		
	}

}
