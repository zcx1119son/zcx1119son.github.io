package p_250307;

public class p_250307_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("스코어보드");
		System.out.println("------------------------------");
		String inning= "        ,1,2,3,4,5,6,7,8,9,R";
		String[] array1=inning.split(",");
		for(int i=0; i<array1.length; i++) {
			System.out.print(array1[i]+"|");
		}
		System.out.println("\n------------------------------");
		String team1= "템파베이  ,0,0,0,0,1,3,2,3,1,10";
		String[] array2=team1.split(",");
		for(int i=0; i<array2.length; i++) {
			System.out.print(array2[i]+"|");
		}
		System.out.println("\n------------------------------");
		String team2= "토론토   ,0,2,2,0,4,1,0,0,0, 9";
		String[] array3=team2.split(",");
		for(int i=0; i<array3.length; i++) {
			System.out.print(array3[i]+"|");
		}
	}

}
