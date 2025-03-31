package p_250312;

class Box{
	int width;
	int length;
	int height;
	double Volume(int width, int length, int height) {
		this.width=width;
		this.length=length;
		this.height=height;
		System.out.println("상자의 가로, 세로, 높이는 "+width+","+length+","+height+"입니다.");
		return width*length*height;
	}
}