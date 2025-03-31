package ch03.sec08;

public class BitLogicExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("45 & 25 = "+(45&25));
		System.out.println("45 | 25 = "+(45|25));
		System.out.println("45 ^ 25 = "+(45^25));
		System.out.println("~45 = "+(~45));
		System.out.println("--------------------");
		
		byte receuveData=-120;
		
		int unsignedInt1=receuveData&255;
		System.out.println(unsignedInt1);
		
		int unsignedInt2=Byte.toUnsignedInt(receuveData);
		System.out.println(unsignedInt2);
		
		int test=136;
		byte btest=(byte)test;
		System.out.println(btest);
	}

}
