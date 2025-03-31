package ch07.sec11;

public sealed class Person permits Employee, Manager{
	public String name;
	
	public void work() {
		System.out.println("생산 관리를 합니다.");
	}
}
