package ch09.sec03.ex02;

public class AExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A.B b=new A.B();
		System.out.println(b.field1);
		b.method1();
		
		System.out.println(A.B.field2);
		A.B.method2();
	}

}
