package p_250311;

public class p_250311_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] score= {79,88,91,33,100,55,95};
		int max;
		int min;
		for(int i=0; i<score.length; i++) {
			int key;
			for(int j=i+1; j<score.length; j++) {
				min=score[i];
				key=score[j];
				if(min>key) {
					score[j]=min;
					score[i]=key;
				}
			}
		}
		min=score[0];
		max=score[score.length-1];
		System.out.println("최소 값은 "+min+" 최댓값은 "+max);
	}

}
