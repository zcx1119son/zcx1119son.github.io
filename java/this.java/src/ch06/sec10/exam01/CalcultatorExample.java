package ch06.sec10.exam01;

public class CalcultatorExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double result1=10*10*Calculator.pi;
		int result2=Calculator.plus(10,5);
		int result3=Calculator.minus(10, 5);
		
		System.out.println("result1 : "+result1);
		System.out.println("result2 : "+result2);
		System.out.println("result3 : "+result3);
		
		Calculator myCalcu = new Calculator();
		result1=10*10*myCalcu.pi;
		result2=myCalcu.plus(10, 5);
		result3=myCalcu.minus(10, 5);
		
		System.out.println("result1 : "+result1);
		System.out.println("result2 : "+result2);
		System.out.println("result3 : "+result3);
	}

}
