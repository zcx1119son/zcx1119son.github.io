package ch08.sec10;

public class Bus implements Vehicle{
	@Override
	public void run() {
		System.out.println("버스가 달립니다.");
	}
	public void checkrace() {
		System.out.println("승차요금을 체크합니다.");
	}
}
