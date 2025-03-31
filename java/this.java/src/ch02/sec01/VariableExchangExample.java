package ch02.sec01;

public class VariableExchangExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x=3;
		int y=5;
		System.out.println("x:"+x+" ,y:"+y);
		
		int z;
		z=x;
		x=y;
		y=z;
		System.out.println("교환된 x:"+x+" ,y:"+y);
		
		
	}

}
