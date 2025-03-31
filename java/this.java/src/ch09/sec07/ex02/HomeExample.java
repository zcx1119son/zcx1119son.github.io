package ch09.sec07.ex02;

public class HomeExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Home home = new Home();
		
		home.use1();
		
		home.use2();
		
		home.user3(new RemoteControl() {
			@Override
			public void turnOn() {
				System.out.println("난방을 켭니다.");
			}
			@Override
			public void turnOff() {
				System.out.println("난방을 끕니다.");
			}
		
		});
	}

}
