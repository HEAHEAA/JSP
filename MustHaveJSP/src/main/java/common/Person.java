package common; //기본패키지 이외의 패키지 규약 1번

public class Person {
	private String name;//private 멤버변수 (규약2)
	private int age; // private 멤버변수 (규약2)
	
	public Person(){} //기본생성자 (규약 3번)
	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	// public 게터/세터 메서드를 규약 4번 5번
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

} //DTO 생성 완료
