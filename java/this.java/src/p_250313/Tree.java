package p_250313;

public class Tree {
	String  treeName;
	int growth;
	int value;
	int plant;
	int star;
	static int max_plant=50;//한정된 심을 수 있는 나무 갯수
	
	void setTreeName(String treeName) { 
		this.treeName=treeName;	
	}
	void setGrowth(int growth) {
		this.growth=growth;
	}
	void value(int value) {
		this.value=value;
	}
	void setPlant(int plant) {
		this.plant=plant;
	}
	void setStar(int star) {
		this.star=star;
	}
	void result() {
		System.out.println("나무 이름: "+treeName+"\n걸린 시간: "+growth+
				"h\n스타: "+star+
				"\n심은 나무 수와 최대 심을 수 있는 나무 갯수: "
				+ plant+"/"+max_plant+"\n나무 가격: "+value+"골드");
	}
}
