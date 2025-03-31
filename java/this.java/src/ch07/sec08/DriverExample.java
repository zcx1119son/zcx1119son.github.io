package ch07.sec08;

public class DriverExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Driver driver = new Driver();
        
        Bus bus = new Bus();
        driver.drive(bus);
        
        Taxi taxi = new Taxi();       
        driver.drive(taxi);

	}

}
