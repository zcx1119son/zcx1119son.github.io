package ch07.sec01;

public class SmartPhoneExample {

	public static void main(String[] args) {
        SmartPhone myPhone = new SmartPhone("폴드4", "검정색");
        
        System.out.println("모델: " + myPhone.model);
        System.out.println("색상: " + myPhone.Color);

        System.out.println("와이파이 상태: " + myPhone.wifi);
        
        myPhone.bell();
        myPhone.sendVoice("여보세요");
        myPhone.receiveVoice("안녕하세요! 저는 오동욱 입니다");
        myPhone.receiveVoice("아~ 네 반갑습니다.");
        myPhone.hangUp();

        //SmartPhone의 메소드 호출
        myPhone.setWifi(true);
        myPhone.internet();

    }
}
