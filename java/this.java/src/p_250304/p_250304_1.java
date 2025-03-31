package p_250304;

import java.util.Scanner;

public class p_250304_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 01. 프로그램 정의 
		// 답 : 진행 계획이나 순서, 또는, 그 목록을 의미
 		// 02. 프로그램 실행의 의미
		// 답 : 컴퓨터에서 저장된 프로그램을 메모리에 올려가서 실행하는 의미
		// 03. 컴퓨터 프로그램 정의
		// 답 : 어떤 문제를 해결하기 위하여 그 처리 방법과 순서를 기술하여 컴퓨터에 주어지는 일련의 명령문 집합체
		// 04. 프로그램 언어 정의
		// 답 : 기계인 컴퓨터에게 명령이나 연산을 시킬 목적으로 설계되어 기계와 의사소통을 할 수 있게 해주는 언어
		// 05. 소프트웨어 정의
		// 답 : 컴퓨터 시스템을 효율적으로 운영하기 위해 개발된 프로그램의 총칭
		// 06. 코드란?
		// 답 : 컴퓨터가 알아 들을 수 있는 언어를 일컫는 말 혹은 컴퓨터도 알아 들을 수 있을 만큼 알고리즘을 논리적으로 작성
 		// 07. 코딩이란?
		// 답 : 하나 이상의 관련된 추상 알고리즘을 특정한 프로그래밍 언어를 이용해 구체적인 컴퓨터 프로그램으로 구현하는 기술
		// 08. 프로그래머란?
		// 답 : 컴퓨터 프로그램의 논리나 알고리즘을 설계하고 프로그램을 작성하고 테스트하는 사람
		// 09. 하드웨어란?
		// 답 : 컴퓨터나 기타 정보기술 장치의 물리적인 구성품
		// 10. 고급언어, 저급 언어 정의
		// 답 : 고급 언어는 컴퓨터와 대화할 수 있도록 만든 언어 중에서 사람이 쉽게 이해할 수 있는 언어이고,
		//		저급 언어는 0과 1로 이루어진 기계어에 가까운 언어
		// 11. 컴파일러 정의 : 특정 프로그래밍 언어로 쓰여 있는 문서를 다른 프로그램이 언어로 옮기는 언어 번역 프로그
		// 12. 버그란?
		// 답 : 프로그램을 실행하는 과정에서 발생하는 오류
		// 13. 디버그, 디버깅이란
		// 답 : 소프트웨어나 하드웨어의 오류를 찾아 수정하는 작업
		
		// 14. 본인의 정보를 출력하는 프로그램을 만들어 주세요. 이름, 이메일, 핸드폰 번호 등 명함으로 만들어 출력해 주세요.
		System.out.println("P_250304_14");
		System.out.println();
		String myName="엄정민";
		String myEmail="zcx1119son@naver.com";
		String myPhoneNumber="010-3904-2054";
		System.out.println("성함: "+myName+ " | 이메일: "+myEmail+" | 전화번호: "+myPhoneNumber); 
		
		// 15. 위의 사각형 박스 안에 있는 내용을 그대로 출력해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_15");
		System.out.println();
		char x1='*';
		String sum1="";
		for(int i=0; i<5; i++) {
			for(int j=0; j<4; j++) {
				System.out.print(x1);
			}
			System.out.println(x1);
		}
		System.out.println("-------------------------------------------------------------");
		for(int i=0; i<5; i++) {
			sum1+=x1;
			System.out.printf("%-5s\n", sum1);
		}
		String sum2="";
		System.out.println("-------------------------------------------------------------");
		for(int i=0; i<5; i++) {
			sum2+=x1;
			System.out.printf("%5s\n", sum2);
		}
		
		// 16. 위의 성적표를 출력해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_16");
		System.out.println();
		String myRecord="성적표";
		String Korean="국어";
		String English="영어";
		String Math="수학";
		String Department="컴퓨터 학과";
		String myName1="홍길동";
		int score=50;
		System.out.println("*********************");
		System.out.println("*\t"+myRecord+"\t    *");
		System.out.println("* "+Korean+"\t"+score+"\t    *");
		System.out.println("* "+English+"\t"+score+"\t    *");
		System.out.println("* "+Math+"\t"+score+"\t    *");
		System.out.println("* "+Department+"\t"+myName1+"*");
		System.out.println("*********************");
		
		// 17. 위와 같은 달력형태처럼 \t를 이용해서 2025년 3월 달력을 만들어 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_17");
		System.out.println();
		System.out.println("일\t월\t화\t수\t목\t금\t토");
		System.out.println("01\t02\t03\t04\t05\t06\t07");
		System.out.println("08\t09\t10\t11\t12\t13\t14");
		System.out.println("15\t16\t17\t18\t19\t20\t21");
		System.out.println("22\t23\t24\t25\t26\t27\t28");
		System.out.println("29\t30\t31");
		
		// 18. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		//답 : 1
		//	  2
		//    3
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_18");
		System.out.println();
		System.out.println("1");
		System.out.println("2");
		System.out.println("3");
		
		// 19. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		//답 : 123
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_19");
		System.out.println();
		System.out.print("1");
		System.out.print("2");
		System.out.print("3");
		
		// 20. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		//답 : hello World
		//     World
		//    hello
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_20");
		System.out.println();
		
		System.out.print("hello");
		System.out.println(" World");
		System.out.println(" World");
		System.out.print("hello");
		
		// 21. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		//답 : 1234
		//     56
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_21");
		System.out.println();
		
		System.out.print("12");
		System.out.println("34");
		System.out.println("56");
		
		// 22. 아래와 같이 출력이 나오도록 코딩해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_22");
		System.out.println();
		System.out.println("hello");
		System.out.println("java");
		
		// 23. ~만으로 아래와 같이 출력이 되게 해주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_23");
		System.out.println();
		
		System.out.print(" ");
		System.out.print(" ");
		System.out.print("1");
		System.out.println("");
		System.out.print(" ");
		System.out.print("1");
		System.out.print("2");
		System.out.println("");
		System.out.print("1");
		System.out.print("2");
		System.out.print("3");
		
		// 24. ~만으로 아래와 같이 출력이 되게 해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_24");
		System.out.println();
		
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.println("");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.println("");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.println("");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		
		// 25. ~만으로 아래와 같이 출력이 되게 해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_25");
		System.out.println();
		
		System.out.print("*");
		System.out.println("");
		System.out.print("*");
		System.out.print("*");
		System.out.println("");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.println("");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		
		// 26. ~만으로 아래와 같이 출력이 되게 해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_26");
		System.out.println();
		
		System.out.print(" ");
		System.out.print(" ");
		System.out.print(" ");
		System.out.print("*");
		System.out.println("");
		System.out.print(" ");
		System.out.print(" ");
		System.out.print("*");
		System.out.print("*");
		System.out.println("");
		System.out.print(" ");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.println("");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		
		// 27. ~만으로 아래와 같이 출력이 되게 해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_26");
		System.out.println();
		
		System.out.print(" ");
		System.out.print(" ");
		System.out.print("*");
		System.out.print(" ");
		System.out.print(" ");
		System.out.println("");
		System.out.print(" ");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print(" ");
		System.out.println("");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.println("");
		System.out.print(" ");
		System.out.print("*");
		System.out.print("*");
		System.out.print("*");
		System.out.print(" ");
		System.out.println("");
		System.out.print(" ");
		System.out.print(" ");
		System.out.print("*");
		System.out.print(" ");
		System.out.print(" ");
		
		// 28. 2진수, 8진수, 16진수 설명
		// 답 : 2진수는 0과1로 되어있는 진수이고, 8진수는 0부터 8까지 되어 있는 진수고 16진수는 0부터 9와 A부터 F까지 된 진수이다.
		// 29. 'a'+1이 98이 나오는 이유를 설명 
		// 답 : ''로 감싼 것을 문자 리터럴이라고 하는데 뮨자 리터럴은 유니코드로 변환되어 저장되어서 유니코드로 a는 97이라 98로 나옵니다.
		// 30. 1bit, 1byte, 1Mbyte, 1Kbtye, 1Gbyte, 1Tbyte 설명
		// 답 : 1bit는 정보라고 취급할 수 있는 가공된 디지털 데이터들을 나타내는 최하위 단위이며, 컴퓨터 용량이나 프로그램 처리 능력의
		// 최소 단위이다. 그래서 1byte = 8bit, 1Kbyte = 1000byte, 1Mbyte = 1000Kbyte, 1Gbyte = 10000Mbyte,
		// 1Tbyte = 1000Gbyte로 구성되어 있다.
		// 31. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		// 답 : 100
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_31");
		System.out.println();
		
		System.out.println(100);
		
		// 33. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		// 답 : 50
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_32");
		System.out.println();
				
		System.out.println(20+30);
		
		// 33. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		// 답 : 20+30
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_33");
		System.out.println();
		
		System.out.println("20+30");
		
		// 34. 아래와 같이 출력이 나오도록 코딩해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_34");
		System.out.println();
		
		float x2=15.4f;
		System.out.println(x2);
		

		// 35. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		// 답 : 101020
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_35");
		System.out.println();
		
		System.out.println("10"+10+20);
		
		// 36. 예상 결과를 주석으로 기재한 후 실행 해 보세요.
		// 답 : 2020
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_36");
		System.out.println();
		
		System.out.println(10+10+"20");
		
		// 37. 연산자 우선 순위를 생각해 보고 예상 계산 결과를 주석으로 기재 한 후 실행
		// 답 : 50
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_37");
		System.out.println();
		
		System.out.println(2+6*(4*2));
		
		// 38. 연산자 우선 순위를 생각해 보고 예상 계산 결과를 주석으로 기재 한 후 실행
		// 답 : 2*(4+3+2)+(4+1*2)
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_38");
		System.out.println();
		
		System.out.println("2*(4+3+2)+(4+1*2)");
		
		// 39. 연산자 우선 순위를 생각해 보고 예상 계산 결과를 주석으로 기재 한 후 실행
		// 답 : (5+3)
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_39");
		System.out.println();
		
		System.out.println("(5+3)");
		

		// 40. 연산자 우선 순위를 생각해 보고 예상 계산 결과를 주석으로 기재 한 후 실행
		// 답 : 7+3=10
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_40");
		System.out.println();
		
		System.out.println("7+3="+(7+3));
		
		// 41. 연산자 우선 순위를 생각해 보고 예상 계산 결과를 주석으로 기재 한 후 실행
		// 답 : 7+3=73
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_41");
		System.out.println();
				
		System.out.println("7+3="+7+3);
		
		// 42. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 10 11 21 11(너무 길어서 4개씩 묶어서 적었습니다.)
		// 답 : 10 11 21 11
		// 답 : 10 11 21 11
		// 답 : 10 11 21 11
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_42");
		System.out.println();
		
		byte a1=10;
		byte a2; a2=11;
		System.out.println(a1);
		System.out.println(a2);
		System.out.println(a1+a2);
		System.out.println(a1+1);
		
		short a3=10;
		short a4; a4=11;
		System.out.println(a3);
		System.out.println(a4);
		System.out.println(a3+a4);
		System.out.println(a3+1);
		
		int a5=10; 
		int a6; a6=11;
		System.out.println(a5);
		System.out.println(a6);
		System.out.println(a5+a6);
		System.out.println(a5+1);
		
		long a7=10L;
		long a8; a8=11l;
		System.out.println(a7);
		System.out.println(a8);
		System.out.println(a7+a8);
		System.out.println(a7+1);
		
		// 43. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 10.23 11.0 21.23 11.63(너무 길어서 4개씩 묶어서 적었습니다.)
		// 답 : 10.23 11.94 22.17 20.63
		// 답 : Hello Helloworld HelloWorld new WordWorld
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_43");
		System.out.println();
		
		float a9=10.23f;
		float a10; a10=11.f;
		System.out.println(a9);
		System.out.println(a10);
		System.out.println(a9+a10);
		System.out.println(a9+1.4f);
		
		double a11=10.23;
		double a12; a12=11.94;
		System.out.println(a11);
		System.out.println(a12);
		System.out.println(a11+a12);
		System.out.println(a11+10.4);
		
		String st1="Hello";
		String st2="World";
		System.out.println(st1);
		System.out.println(st1+"world");
		System.out.println(st1+st2);
		st1="new Word";
		String str3=st1+st2;
		System.out.println(str3);
		
		// 44. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 10
		//     30
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_44");
		System.out.println();
		
		int aa=10;
		System.out.println(aa);
		int bb=30;
		System.out.println(bb);
		
		// 45. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 40
		//     60
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_45");
		System.out.println();
		
		int b=30;
		System.out.println(b+10);
		int c=30;
		System.out.println(c+c);
		
		// 46. 변수 hello에 50을 넣고 해당 변수를 이용해서 80이 출력이 되도록 코딩
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_46");
		System.out.println();
		
		int hello=50;
		System.out.println(hello+(hello/5)*3);
		
		// 47. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 60
		//     66
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_47");
		System.out.println();
		
		int d=30; d=60;
		System.out.println(d);
		int i1=22; 
		int i2=11;
		int i3=33;
		System.out.println(i1+i2+i3);
		
		// 48. ~를 했을때 결과가 ~이 출력이 되도록 내용을 기재
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_48");
		System.out.println();
		
		int world=5;
		System.out.println(world);
		int a=6;
		System.out.println(world+a);
		
		// 49. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 10
		//     world5
		//     world5
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_49");
		System.out.println();
		
		int world1=5;
		System.out.println(world1+5);
		System.out.println("world"+5);
		System.out.println("world"+world1);
		
		// 50. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : a+b=56
		//     a+b=11 
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_50");
		System.out.println();
		
		int a13=5;
		int b1=6;
		System.out.println("a+b="+a13+b1);
		System.out.println("a+b="+(a13+b1));
		

		// 51. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 5
		//     3
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_51");
		System.out.println();
		
		int a14=5;
		System.out.println(a14);
		a14=3;
		System.out.println(a14);
		
		// 52. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 5
		//     6
		//     11
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_52");
		System.out.println();
		
		int a15=5;
		System.out.println(a15);
		a15=6;
		System.out.println(a15);
		int b2=5;
		System.out.println(a15+b2);
		
		// 53. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 8
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_53");
		System.out.println();
		
		int a16=5; a16=6; a16=7; a16=8;
		System.out.println(a16);
		
		// 54. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 10.1hello
		//      hello5.15
		//      a+b=10.1hello
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_54");
		System.out.println();
		
		int a17=5;
		double b3=5.1;
		String st="hello";
		System.out.println(a17+b3+st);
		System.out.println(st+b3+a17);
		System.out.println("a+b="+(a17+b3)+st);
		
		// 55. 아래의 문장을 기술해서 예상 결과를 주석으로 기재한 후 실행
		// 답 : 7
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_55");
		System.out.println();
		
		int a18=5;
		a18=a18+2;
		System.out.println(a18);
		
		// 56. 변수 이름 지을 때 유의사항 6가지, 관용적으로 지켜야 할 것들 4가지 기술해 보세요.
		// 답 : 1. 변수 이름은 영문자, 숫자, 밑줄, 달러 기호로 구성, 2. 변수는 영문자로 시작해야 하며 숫자로 시작할 수 없다,
		// 3. 대소문자가 구분되며, 길이에 제한 없다, 4. 자바의 예약어는 식별자로 사용할 수 없다. 5.카멜 표기법을 사용하는 관례
		// 6. 상수의 이름은 모두 대문자로 작성하며 여러 단어는 밑줄로 구분
		// 관용적 규칙 : 1. 카멜 표기법로 작성, 2. 한글로 변수명을 짓는  것은 가능하지만, 지양, 3. 변수 안에 저장된 값이 
		// 어떤 의미를 가지는 지 알 수 있도록 이름을 짓는다, 4. 명사형을 작성
		// 57. =, +, % 연사자에 대해서 설명해 주세요.
		// 답 : =는 변수에 대입하고, +는 변에 값을 더하고, %는 나머지 값을 나오게 한다.
		// 58. ++전위, 후위 연산자에 대해서 설명해 주세요.
		// 답 : 전위 연산자는 실행중에 값에 증가하고 후위 연산자는 실행이 끝나고 값이 증가한다.
		
		// 59. 순서도를 보고 자바 코드로 구현해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_59");
		System.out.println();
		
		int a19=6;
		a19=a19+3;
		System.out.println(a19);
		
		// 60. 순서도를 보고 자바 코드로 구현해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_60");
		System.out.println();
		
		int a20=5;
		int b4=6;
		int sum3=a20+b4;
		a20=7;
		System.out.println("sum3:"+sum3+" a:"+a20+" b:"+b4);
		sum3=a20+b4;
		System.out.println("sum3:"+sum3+" a:"+a20+" b:"+b4);
		
		// 61. a=b=c를 실행시키면 3개의 값이 c 값으로 변경되는 이유를 설명
		// 답 : 변수는 마지막 값으로 결정되기 때문에 a가 b값을 저장되었다가 c값으로 저장되었다.
		// 62. 3=2; 7=7;가 에러인 이유 설명
		// 답 : 변수 안에 값을 넣는게 아니라 에러가 생긴다.
		// 63. z=z+4 의미
		// 답 : z라는 변수를 z값과 4들 더해서 넣어준다.
		// 64. a-=10; c*=10; 의미
		// 답 : a-=10;는 a값에 10을 빼서 넣는 의미고, c*=10;는 c값에 10을 곱해서 넣으라는 의미입니다.
		
		// 65. 순서도를 보고 자바 코드로 구현해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_65");
		System.out.println();
		
		int sum4=0;
		sum4=3*6;
		sum4=5+sum4;
		System.out.println(sum4);
		
		// 66. (5+3)*6의 실행 결과
		// 답 : 48
		// 67. 실행 결과
		// 답 : 29.6
		// 68. 5%6+(3+3*2)의 실행 결과
		// 답 : 14
		// 69. 2%6+3+(2+5)+3/2
		// 답 : 13
		// 70. a=b=40; 20=c=a; a=5+3=8*4; 다음 코드중 잘못된 부분을 찾아서 잘못된 이유를 설명
		// 답 : 20=c=a가 틀린 부분이다, 왜하면 변수값을 넣을 때 변수는 항상 왼쪽에 있어서 값을 받아야 하기 때문이다.
		
		// 71. 위에 코드가 에러가 나지 않게 수정해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_71");
		System.out.println();
		
		boolean b5=true;
		int i=1;
		short s=2;
		char c1='a';
		float f=1.234f;
		
		short s2=(short)(s+c1);
		short s3=(short)(s+s);
		char c2=(char)(c+s);
		int i4=c1+s;
		int i5=(int)(b+i);
		
		// 72. 세로와 가로를 입력 받아 사각형의 넓이를 만드는 순서도와 프로그램을 만들어 주세요.
		// 순서도 : 시작 -> 세로:y, 가로 :x -> result=x*y -> p(result) -> 종료
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_72");
		System.out.println();
		
		Scanner scanner=new Scanner(System.in);
		System.out.print("세로 y 값 입력: ");
		String stry=scanner.nextLine();
		int y=Integer.parseInt(stry);
		
		System.out.print("가로 x 값 입력: ");
		String strx=scanner.nextLine();
		int x=Integer.parseInt(strx);
		
		int result=x*y;
		System.out.println("세로 y:"+y+"와 가로 x:"+x+"인 사각형의 넓이는 "+result);
		
		// 73. 세로와 가로, 높이를 입력 받아 사각기둥의 부피를 만드는 순서도와 프로그램을 만들어 주세요.
		// 순서도 : 시작 -> 세로:y1, 가로 :x3 높이 :z-> result=x3*y1*z -> p(result) -> 종료
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_73");
		System.out.println();
		
		Scanner scanner1=new Scanner(System.in);
		System.out.print("세로 y 값 입력: ");
		String stry1=scanner1.nextLine();
		int y1=Integer.parseInt(stry1);
		
		System.out.print("가로 x 값 입력: ");
		String strx1=scanner1.nextLine();
		int x3=Integer.parseInt(strx1);
		
		System.out.print("높이 z 값 입력: ");
		String strz=scanner1.nextLine();
		int z=Integer.parseInt(strz);
		
		int result1=x3*y1*z;
		System.out.println("세로 y:"+y1+"와 가로 x:"+x3+"와 높이 z:"+z+"인 사각기둥의 부피는 "+result1);
		
		//74. a센치미터가 몇 미터 몇센치 인지 출력하는 프로그램을 구현해 주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_74");
		System.out.println();
		
		Scanner scanner2=new Scanner(System.in);
		System.out.print("acm 값 입력: ");
		String strA=scanner1.nextLine();
		int a21=Integer.parseInt(strA);
		
		int a21M=a21/100;
		int a21Cm=a21%100;
		System.out.print("입력한 acm는 "+a21M+"m"+a21Cm+"cm입니다.");
		
		// 75. 잔디의 가격은 1제곱 미터에 a원 일때 윗변이 b, 아랫변이 c, 높이 d인 사다리꼴 잔디를 심으려면 얼마의 비용이
		//     드는지 구하는 순서도를 작성하시오.
		// 순서도 : 시작 -> 윗변 : b6, 아랫변 : c3, 높이 : d1 -> sum((b6+c3)*d1/2) -> a=sum -> p(a) -> 종료
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_75");
		System.out.println();
		
		Scanner scanner3=new Scanner(System.in);
		System.out.print("윗변 b 값 입력: ");
		String strB=scanner3.nextLine();
		int b6=Integer.parseInt(strB);
		
		System.out.print("아랫변 c 값 입력: ");
		String strC=scanner3.nextLine();
		int c3=Integer.parseInt(strC);
		
		System.out.print("높이 d 값 입력: ");
		String strD=scanner3.nextLine();
		int d1=Integer.parseInt(strD);
		
		int sum=((b6+c3)*d1/2);
		int a22=sum;
		System.out.println("윗변:"+b6+", 아랫변:"+c3+", 높이:"+"인사다리꼴 면적은 "+sum+"m^2라서 "+a22+"원 가격이 필요하다.");
		
		// 76. 두 수를 입력 받아 두 수의 차를 출력하는 프로그램을 작성
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_76");
		System.out.println();
		
		Scanner scanner4=new Scanner(System.in);
		System.out.print("첫번째 값 입력: ");
		String strX=scanner4.nextLine();
		int x4=Integer.parseInt(strX);
		
		System.out.print("두번째 값 입력: ");
		String strY=scanner4.nextLine();
		int y2=Integer.parseInt(strY);
		
		int value1= x4>y2 ? x4 : y2;
		int value2= x4<y2 ? x4 : y2;
		System.out.println("입력 받은 두 수의 차는 "+(value1-value2)+"입니다.");
		
		// 77. 다음은 국어, 영어, 수학 점수를 입력 받아 평균을 구하여 다음과 같이 출력하는 프로그램을 만들어 보자.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_77");
		System.out.println();
		
		int myKorea=80;
		int myEnglish=70;
		int myMath=90;
		
		int avg = (myKorea+myEnglish+myMath)/3;
		System.out.println("국어:"+myKorea+" 영어:"+myEnglish+" 수학:"+myMath+" 평균:"+avg);
		
		// 78. 키를 m로 소수점 2번째 자리까지 입력 받아 cm로 바꿔주는 프로그램을 구현하세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_78");
		System.out.println();
		
		Scanner scanner5=new Scanner(System.in);
		System.out.print("키가 몇m인지 입력:");
		String strM=scanner5.nextLine();
		strM=String.format("%.2f", strM);
		double m=Double.parseDouble(strM);
		
		int valueCm=(int)(m*100);
		System.out.printf("키 %.2fm를 cm로 바꾸게 되면 %dcm로 나옵니다.\n", m, valueCm);
		
		// 79. 연필 한 박스에 12자루의 연필이 들어 있고 연필 1자루는 1000원이다. 소비자가 몇 박스와 연필 몇자루를 구매할 것인지
		// 입력 받아 지불해야 할 돈을 계산해 주는 프로그램을 구현
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_79");
		System.out.println();
		
		Scanner scanner6=new Scanner(System.in);
		System.out.print("연필 몇 박스를 구해하시나요?:");
		String strBox=scanner6.nextLine();
		int box=Integer.parseInt(strBox);
		
		int das=box*12;
		int won=das*1000;
		
		System.out.println("구매할 연필 "+box+"개의 연필 갯수는 "+das+"자루이고, 연필 총 가격은 "+won+"원입니다.");
		
		// 80. 반지름이 20cm인 피자 2개와 30cm인 피자 1개의 면적을 비교해서 어떤 사이즈의 피자를 주문하는 것이 좋은지 알려주세요.
		System.out.println("-------------------------------------------------------------");
		System.out.println("P_250304_80");
		System.out.println();
		
		double pie=3.141592;
		double twentyPizza=2*20*pie;
		double thirtyPizza=2*30*pie;
		
		System.out.printf("20cm 피자 2개의 면적은 %9.4f\n", twentyPizza*2);
		System.out.printf("30cm 피자 1개의 면적은 %9.4f\n", thirtyPizza);
		String comparison = twentyPizza > thirtyPizza ? "20cm 피자 2개" : "30cm 피자 1개";
		System.out.printf("%s를 주문하는 게 더 좋아요~~", comparison);
	}
}
