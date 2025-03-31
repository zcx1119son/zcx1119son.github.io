package p_250312;

public class TelevisionExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Television LG_Television = new Television(7,9, true);
		System.out.println("LG_Television channel: "+LG_Television.channel);
		System.out.println("LG_Television volum: "+LG_Television.volum);
		System.out.println("LG_Television onOff: "+LG_Television.onOff);
		
		Television Samsung_Television=new Television(9,10,true);
		System.out.println("Samsung_Television channel: "+LG_Television.channel);
		System.out.println("Samsung_Television volum: "+LG_Television.volum);
		System.out.println("Samsung_Television onOff: "+LG_Television.onOff);
	}

}

