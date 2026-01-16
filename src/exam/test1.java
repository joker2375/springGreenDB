package exam;

public class test1 {
	public static void main(String[] args) {
		int tot = 0;
		
		for(int i=1; i<=100; i++) {
			tot += i;
			if(i % 10 == 0 ) {
				System.out.println("1부터 "+i+"까지의 합은 "+tot+"입니다.");
			}
		}
	}
}
