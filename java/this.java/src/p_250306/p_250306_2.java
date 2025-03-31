package p_250306;

public class p_250306_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//시작 -> int[10] a 생성 -> a[i]=I((i+1)*3) 배열 길이만큼 반복-> P(a[i]) 배열 길이 만큼 반복 -> 종료
		int[] a=new int[10];
		
		for(int i=0; i<a.length; i++) {
			System.out.println("a["+i+"] = "+((i+1)*3));
		}
	}
}
