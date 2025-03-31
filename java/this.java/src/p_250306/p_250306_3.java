package p_250306;

public class p_250306_3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a[] = new int[100];
		int sum=0;
		
		for(int i=0; i<a.length; i++) {
			a[i]=i+1;
			if((i+1)%2==0) {
				sum+=(i+1);
			}
		}
		System.out.println("1부터 100까지 짝수의 합은 "+sum);
	}

}
