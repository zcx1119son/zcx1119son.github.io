package p_250313;

public class teeExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Tree tree1=new Tree();
		tree1.setTreeName("Mango");
		tree1.setGrowth(4);
		tree1.setStar(4);
		tree1.setPlant(7);
		tree1.value(200);
		tree1.result();
		
		Tree tree2=new Tree();
		tree2.setTreeName("papaya");
		tree2.setGrowth(6);
		tree2.setStar(6);
		tree2.setPlant(6);
		tree2.value(375);
		tree2.result();
		
		Tree tree3=new Tree();
		tree3.setTreeName("Banana Palm");
		tree3.setGrowth(5);
		tree3.setStar(5);
		tree3.setPlant(7);
		tree3.value(500);
		tree3.result();
		
		Tree tree4=new Tree();
		tree4.setTreeName("Lemon");
		tree4.setGrowth(8);
		tree4.setStar(8);
		tree4.setPlant(1);
		tree4.value(750);
		tree4.result();
	}

}
