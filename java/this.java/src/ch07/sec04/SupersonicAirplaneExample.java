package ch07.sec04;

public class SupersonicAirplaneExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		  SupersonicAirplane sa = new SupersonicAirplane();
	        sa.takeOff();
	        sa.fly();
	        System.out.println("flyMode: "+sa.flyMode);
	        sa.flyMode = SupersonicAirplane.SUPERSONIC;
	        System.out.println("flyMode: "+sa.flyMode);
	        sa.fly();
	        sa.flyMode = SupersonicAirplane.NORMAL;
	        System.out.println("flyMode: "+sa.flyMode);
	        sa.fly();
	        sa.land();

	    }
}
