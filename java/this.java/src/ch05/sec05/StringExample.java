package ch05.sec05;

public class StringExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String ssn="9506241230123";
		char sex=ssn.charAt(6);
		switch(sex){
			case '1':
			case '3':
				System.out.println("남자입니다.");
				break;
			case '2':
			case '4':
				System.out.println("여자입니다.");
				break;
		}
		int length=ssn.length();
		System.out.println("length:"+length);
		if(length==13) {
			System.out.println("주민등록번호 자릿수가 맞습니다.");
		}else {
			System.out.println("주민등록번호 자릿수가 틀립니다.");
		}
		String oldStr="자바 문자열은 불변입니다. 자바 문자열은 String입니다.";
		String newStr=oldStr.replace("자바", "JAVA");
		
		System.out.println(oldStr);
		System.out.println(newStr);
		
		ssn="880815-1234567";
		
		String firstNum=ssn.substring(0,6);
		System.out.println(firstNum);
		
		String secondNum=ssn.substring(7);
		System.out.println(secondNum);
		
		String subject="자바 프로그래밍 자바12345 자바 6";
		System.out.println("문자열의 길이:"+subject.length());
		int location=subject.indexOf("프로그래밍");
		System.out.println("프로그래밍이 있는 시작위치:"+location);
		String substring =subject.substring(location);
		System.out.println(substring);
		
		location=substring.indexOf("자바");
		System.out.println("자바가 있는 시작위치:"+location);
		if(location!=-1) {
			System.out.println("자바와 관련된 책이군요.");
		}else {
			System.out.println("자바와 관련 없는 책이군요.");
		}
		String pythonStr=subject.replace("자바", "Python");
		System.out.println("pythonStr:"+pythonStr);
		
		boolean result=subject.contains("자바");
		if(result) {
			System.out.println("자바와 관련된 책이군요.");
		}else {
			System.out.println("자바와 관련 없는 책이군요.");
		}
		String board="1,자바학습,참조타입 String을 학습합니다.,심남희";
		String[] tokens=board.split(",");
		
		System.out.println("번호:"+tokens[0]);
		System.out.println("제목:"+tokens[1]);
		System.out.println("내용:"+tokens[2]);
		System.out.println("쓴이:"+tokens[3]);
		System.out.println();
		
		for(int i=0; i<tokens.length; i++) {
			System.out.println(tokens[i]);
		}
		System.out.println();
		
		String board2 ="1:자바학습:참조타입 String을 학습합니다.:둘리";
		String[] tokens2=board2.split(":");
		
		for(int i=0; i<tokens2.length; i++) {
			switch(i) {
				case 0:
					System.out.println("번호:"+tokens2[i]);
					break;
				case 1: 
					System.out.println("제목:"+tokens2[i]);
					break;
				case 2: 
					System.out.println("내용:"+tokens2[i]);
					break;
				case 3: 
					System.out.println("글쓴이:"+tokens2[i]);
					break;
			}
		}
	}

}
