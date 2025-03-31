package ch06.sec15;

public class Singleton {
	private static Singleton singleton =new Singleton();
	private int count=0;
	
	private Singleton() {
		System.out.println("Singleton Constructor Count:"+count);
	}
	 static Singleton getInstance() {
	        System.out.println("getInstance count before:"+singleton.count);
	        singleton.count++;
	        System.out.println("getInstance count after:"+singleton.count);
	        return singleton;
	    }

	    public int getCount() {
	        return count;
	    }

	    public void setCount() {
	        this.count++;
	    }
}
