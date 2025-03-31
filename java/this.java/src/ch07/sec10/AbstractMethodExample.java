package ch07.sec10;

public class AbstractMethodExample {
	 public static void main(String[] args) {
	        Dog dog = new Dog();
	        dog.sound();
	        
	        Cat cat = new Cat();
	        cat.sound();
	        
	        System.out.println("=============");
	        
	        //매개변수의 다형성
	        animalSound(new Dog());
	        animalSound(new Cat());
	    }
	    
	    public static void animalSound(Animal animal) {
	        animal.sound();
	    }
}
