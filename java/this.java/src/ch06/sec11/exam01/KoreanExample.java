package ch06.sec11.exam01;

public class KoreanExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Korean k1 = new Korean("123456-1234567", "김자바");
		
		System.out.println(k1.nation);
		System.out.println(k1.ssn);
		System.out.println(k1.name);
		
		k1.name="nhshim";
		System.out.println("==============================");
		System.out.println(k1.nation);
		System.out.println(k1.ssn);
		System.out.println(k1.name);
	}

}
