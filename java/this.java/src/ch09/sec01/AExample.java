package ch09.sec01;

public class AExample {
	public static void main(String[] args) {
		A a = new A();
		System.out.println("1----------");
		A.B b = a.new B();
		System.out.println("2----------");
	}
}
