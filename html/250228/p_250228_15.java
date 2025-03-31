package p_250228;

public class p_250228_15 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double d=85.4;
		int score=(int) d;
		System.out.println("score="+ score);
		System.out.println("d="+ d);
		System.out.println("====================");
		// double형으로 85.4 값을 받은 d와 int 형을 받은 score에 넣기 위해 int로 강제 타입 변환으로 넣어져서 출력하면
		//score= 85.4
		//d= 8 입니다.
		byte a=10;
		byte b=30;
		byte c=(byte)(a*b);
		System.out.println(c);
		System.out.println("====================");
		// byte형으로 각각 a에는 10, b에는 30으로 값이 들어가고 byte형 c는 a*b에 나온 int형 값이 byte로 
		//강제 타입 변환으로 오버플로우된 값은 사라지고 나머지 값만 출력이 되서
		//44 입니다.
		double num1=1.2345;
		int num2=6;
		System.out.println(num1+num2);
		//피연산자 중에 double 타입이 있어서 다른 피연자도 double 타입이 되기 때문에 출력하면
		//7.2345 입니다.
	}

}
