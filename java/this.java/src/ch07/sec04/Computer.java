package ch07.sec04;

public class Computer extends Calculator{
	 @Override
	    public double areaCircle(double r) {
	        System.out.println("Computer 객체의 arearCircle() 실행");
	        return Math.PI*r*r;
	    }
}
