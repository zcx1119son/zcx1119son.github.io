package p_250311;

public class Book {
	String title="제목없음";
	int series=1;
	int page=100;
	Book(){
	}
	Book(String title){
		this.title=title;
	}
	Book(String title, int page){
		this.title=title;
		this.page=page;
	}
	Book(int series, String title){
		this.series=series;
		this.title=title;
	}
}
