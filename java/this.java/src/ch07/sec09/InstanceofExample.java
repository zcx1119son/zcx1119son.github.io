package ch07.sec09;

public class InstanceofExample {
	public static void personInfo(Person person) {
		System.out.println("name" +person.name);
		person.walk();
		
		if(person instanceof Student student) {
			System.out.println("studentNo: "+student.studentNo);
			student.study();
		}else {
			System.out.println("학생이 아니라서 번호가 없습니다.");
		}
		 if (person instanceof Student) {
	            System.out.println("Java11버전이하이면 지금과 같이 하면 됩니다=============");
	            
	            Student student = (Student) person;
	            System.out.println("studentNo: " + student.studentNo);
	            student.study();
		 }
	}
	public static void main(String[] args) {
		Person p1 = new Person("홍길동");
		personInfo(p1);
		
		System.out.println();
		
		Person p2=new Student("김길동", 10);
		personInfo(p2);
	}
}
