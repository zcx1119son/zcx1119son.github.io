package ch06.sec15;

public class singletonExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		  Singleton obj1 = Singleton.getInstance();
	        Singleton obj2 = Singleton.getInstance();
	        
	        //동일한 객체를 참조하는지 확
	        if(obj1 == obj2) {
	            System.out.println("같은 Singleton 객체 입니다.");
	        } else {
	            System.out.println("다른 Singleton 객체 입니다.");
	        }

//	        obj1.setCount();
//	        obj2.setCount();
	        System.out.println(obj1.getCount()+":"+obj2.getCount());
	        
	        obj1.setCount();
	        System.out.println(obj1.getCount()+":"+obj2.getCount());
	        obj2.setCount();
	        System.out.println(obj1.getCount()+":"+obj2.getCount());
	    }

}
