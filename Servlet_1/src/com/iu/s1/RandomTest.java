package com.iu.s1;

import java.util.Random;

public class RandomTest {
	
	//멤버 변수
	//멤버 변수 선언 공식
	//접근 지정자 그외 지정자 데이터타입 변수명
	private Random random;
	
	//생성자
	//생성자 선언 공식
	//접근 지정자 클래스명과 동일한 메서드명()	{ }
	public RandomTest() {
		//디폴트 생성자
		//빈 생성자
		
		random = new Random();
		
	}
	
	//멤버 메서드
	//메서드 선언 공식
	//접근지정자 그외 지정자 리턴타입 메서드명(매개변수) throws Exception { }
	public int getNum() {
		int num = random.nextInt(10);
		System.out.println(num);
		return num;
	}
	
	public static void main(String[] args) {
		RandomTest rt = new RandomTest();
		rt.getNum();
	}
	
	
}
