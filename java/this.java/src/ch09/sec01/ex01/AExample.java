package ch09.sec01.ex01;

public class AExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a = new A();
		a.usbB();
		A.B b= a.new B();
		A.B.method2();
		int f2=A.B.field2;
		System.out.println(f2);
	}

}
