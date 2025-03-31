package ch06.sec07.exam05;

public class CarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car car2= new Car("미국용");
		System.out.println("car2 company:"+car2.company);
		System.out.println("car2 model:"+car2.model);
		System.out.println("cae2 color:"+car2.color);
		System.out.println("car2 maxSpeed"+car2.maxSpeed);
		System.out.println("");
		
		Car car3= new Car("아시아용", "흰색");
		System.out.println("car3 company:"+car3.company);
		System.out.println("car3 model:"+car3.model);
		System.out.println("cae3 color:"+car3.color);
		System.out.println("car3 maxSpeed"+car3.maxSpeed);
		System.out.println("");
		
		Car car4= new Car("유럽용", "검정색", 350);
		System.out.println("car4 company:"+car4.company);
		System.out.println("car4 model:"+car4.model);
		System.out.println("cae4 color:"+car4.color);
		System.out.println("car4 maxSpeed"+car4.maxSpeed);
		
	}

}
