package ch06.sec07;

public class KoreanExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Korean k1=new Korean("둘리", "011001-1234567");
		System.out.println("K1.nation : "+k1.nation);
		System.out.println("k1.name : "+k1.name);
		System.out.println("k1.ssn : "+k1.ssn);
		System.out.println();
		
		Korean k2=new Korean("도우너", "010101-0654321");
		System.out.println("k2.nation : "+k2.nation);
		System.out.println("k2.name : "+k2.name);
		System.out.println("k2.ssn : "+ k2.ssn);
		System.out.println();
		
		Korean k3= new Korean("희동이");
		System.out.println("k3.nation : "+k3.nation);
		System.out.println("k3.name : "+k3.name);
		System.out.println("k3.ssn : "+ k3.ssn);
	}

}
