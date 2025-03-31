package ch05.sec06;

public class ArrayExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] season= {"Spring", "Summer", "Fall", "Winter"};
		
		System.out.println("seasson[0] : "+season[0]);
		System.out.println("seasson[1] : "+season[1]);
		System.out.println("seasson[2] : "+season[2]);
		System.out.println("seasson[3] : "+season[3]);
		
		System.out.println();
		//인덱스 1항목에 "야, 여름이다" 값으로 변경, 출력해주세요.
		season[1]="야, 여름이다.";
		for(int i=0; i<season.length; i++) {
			System.out.println("seasson["+i+"] : "+season[i]);
		}
		
		
		System.out.println();
		//arr1의 각 항목별 값들을 인덱스 번호로 채워 순서대로 값을 출력해 주세요.
		int[] arr1 = new int[5];
		for(int i=0; i<arr1.length; i++) {
			System.out.println("arr["+i+"] : "+i);
			}
		
		System.out.println();
		//double 데이터 타입으로 배열의 길이는 3개로 생성한 다음에 순서대로 값을 출력해 주세요.
		double[] arr2=new double[3];
		int k=0;
		double j=0.1;
		do {
			arr2[k]=j;
			System.out.printf("arr[%d] : %.1f\n", k,j);
			k++;
			j+=0.2;	
		}while(j<0.7);
		System.out.println();
		//문자열을 담은 3개의 배열을 선언 한 후 순서대로 값을 출력해 주세요.
		String[] season1=new String[3];
		
		for(int i=0; i<season1.length; i++) {
			switch(i) {
			case 0:
				season1[i]= "1월";
				System.out.print(season1[i]+", ");
				break;
			case 1:
				season1[i]= "2월";
				System.out.print(season1[i]+", ");
				break;
			case 2:
				season1[i]= "3월";
				System.out.println(season1[i]);
				break;
			}
		}
		System.out.println();
		//문자열을 담은 점수의 총합과 평균을 출력하세요.
		int[] scores1= {100, 50, 80, 94};
		int sum1=0;
		double avg1=0;
		for(int i=0; i<scores1.length; i++) {
			sum1+=scores1[i];
			if(i==3) {
				avg1=(double)sum1/3;
			}
		}
		System.out.println("점수들의 총합:"+sum1+", 평균:"+avg1);
	}
}