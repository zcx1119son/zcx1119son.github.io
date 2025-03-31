package ch08.sec02;

public class RemoteControlExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		RemoteControl rc;
		rc=new Television();
		rc.turnOn();
		rc.setVolume(5);
		rc.turnOff();
		
		rc.setMute(true);
		rc.setMute(false);
		
		rc= new Audio();
		rc.turnOn();
		rc.setVolume(3);
		rc.turnOff();
		rc.setMute(true);
		rc.setMute(false);
		
		System.out.println();
		RemoteControl.changeBattery();
		
//		System.out.println("리모콘 최대 볼륨: "+RemoteControl.MAX_VOLUME);
//		System.out.println("리모콘 최저 볼륨: "+RemoteControl.MIN_VOLUME);
	}

}
