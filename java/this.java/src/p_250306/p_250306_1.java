package p_250306;

public class p_250306_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//순서도 : 시작 -> int[3] arrInt 생성 -> arrInt[i] = I(i+1) 배열길이 만큼 반복 -> P(arrInt[i]) 
		//배열 길이만큼 반복 -> arrInt[i] = I((i+1)+2) 배열길이 만큼 반복 -> P(arrInt) -> 종료
		int[] arrInt = new int[3];
		for(int i=0; i<arrInt.length; i++) {
			System.out.println("변경 전 arrInt["+i+"] = "+(i+1));
			if(i==arrInt.length-1) {
				System.out.println("--------------------");
				for(int k=0; k<arrInt.length; k++) {
					int j=k+3;
					System.out.println("변경 후 arrInt["+k+"] = "+j);
				}
			}
		}
	}
}
