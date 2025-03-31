package p_250313;


public class lotto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print("이번주 로또는 ");
		int lotto[] = new int[6];	// 로또 번호를 입력받을 배열을 선언해준다.
		for(int i=0; i<lotto.length; i++) {
			int num=(int)(Math.random()*45)+1;
			lotto[i]=num;
			for(int j=0; j<i; j++) {
				if(lotto[j]==lotto[i]) {
					i--;
					break;
				}
			}
		}
		int key;
		for(int i=0; i<lotto.length; i++) {
			for(int j=i+1; j<lotto.length; j++) {
				if(lotto[i]>lotto[j]) {
					key=lotto[i];
					lotto[i]=lotto[j];
					lotto[j]=key;
			}
			}
			System.out.print(lotto[i]+" ");
		}
	}
}