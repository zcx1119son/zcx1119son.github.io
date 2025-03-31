package ch06.sec07.exam04;

public class CarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car car1=new Car();
		System.out.println("Car1 company:"+car1.company);
		System.out.println("");
		
		Car car2=new Car("미국용");
		System.out.println("Car2 company:"+car2.company);
		System.out.println("car2 model:"+car2.model);
		System.out.println("");
		
		Car car3=new Car("아시아용", "흰색");
		System.out.println("Car3 company:"+car3.company);
		System.out.println("car3 model:"+car3.model);
		System.out.println("car3 color:"+car3.color);
		System.out.println("");
		
		Car car4=new Car("유럽용", "검정색", 350);
		System.out.println("Car4 company:"+car4.company);
		System.out.println("car4 model:"+car4.model);
		System.out.println("car4 color:"+car4.color);
		System.out.println("car4 MaxSpeed:"+car4.maxSpeed);
		System.out.println("");
		
		Car car5=new Car("남미용", 300);
		System.out.println("Car5 company:"+car5.company);
		System.out.println("car5 model:"+car5.model);
		System.out.println("car5 MaxSpeed:"+car5.maxSpeed);
		System.out.println("");
	}

}
