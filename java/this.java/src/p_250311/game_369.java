package p_250311;

public class game_369 {

	public static void main(String[] args) {
		for(int i=1; i<=1000; i++) {
			int ten=i/10;
			int one=i%10;
			int hundred=i/100;
			int hundredTen=i%100/10;
			int hundredOne=i%100%10;
			if(i>=100) {//i가 100보다 클때
				if(hundred==3||hundred==6||hundred==9) {//백의 자리가 짝이면서
					if(hundredTen==3||hundredTen==6||hundredTen==9) {//백,십의 자리가 짝이면서
						if(hundredOne==3||hundredOne==6||hundredOne==9) {//백,십,일의 자리가 짝일때
							System.out.print("짝짝짝,");
						}else if(hundredOne==0) {//일의 자리가 뾰숑일때
							System.out.println("짝짝뾰숑");
						}else {//일의 자리가 아닐때
							System.out.print("짝짝,");
						}
						
					}else if(hundredOne==0){//백의 자리가 짝이면서 뾰쑝일때
						System.out.println("짝뾰숑");
					}else if(hundredOne==3||hundredOne==6||hundredOne==9){//백, 일의 자리가 짝일때
						System.out.print("짝짝,");
					}else {//백의 자리만 짝일때
						System.out.print("짝,");
					}
					
				}else {
					if(hundredTen==3||hundredTen==6||hundredTen==9) {//십의 자리가 짝일때
						if(hundredOne==3||hundredOne==6||hundredOne==9) {//십, 일의 자리가 짝일때
							System.out.print("짝짝,");
						}else if(hundredOne==0) {//십의 자리가 짝과 뾰숑일때
							System.out.println("짝뾰숑");
						}else {//십의 자리만 짝일때
							System.out.print("짝,");
						}
					}else if(hundredOne==0) {//일의자리만 뾰숑일때
						System.out.println("뾰숑");
					}else if(hundredOne==3||hundredOne==6||hundredOne==9){
						System.out.print("짝,");
					}else {
						System.out.print(i+",");
						}
					}
				
				}else {
					if(ten==3||ten==6||ten==9) {
						if(one==3||one==6||one==9) {
							System.out.print("짝짝,");
						}else if(one==0) {
							System.out.println("짝뾰숑");
						}else {
							System.out.print("짝,");
						}
					}else if(one==0) {
						System.out.println("뾰숑");
					}else if(one==3||one==6||one==9){
						System.out.print("짝,");
					}else {
						System.out.print(i+",");
					}
				}
			}

		}
	
}
