package p_250311;

public class p_250311_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[][] array= {{95,86}, {83, 92,96}, {78,83,93,87,99}};
		int sum=0;
		double avg = 0;
		for(int i=0; i<array.length; i++) {
			int[] array1=array[i];
			for(int j=0; j<array1.length; j++) {
				sum+=array1[j];
			}
			avg=(double)(sum/array.length);
		}
		System.out.println("총합은 "+sum+" 평균은 "+avg+"입니다.");
	}

}
