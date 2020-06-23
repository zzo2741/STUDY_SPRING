package di;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/*
 * @Configuration : 해당 클래스를 스프링 설정파일로 사용하겠다는 선언으로 XML설정 파일을 사용하는 대신 해당 java파일을 설정파일로 사용한다.
 */
@Configuration
public class AppConfiguration
{
	/*
	 * @Bean : 해당 설정파일에서 빈을 생성할때 선언한다. 해당 빈은 컨트롤러로 getBean()메소드를 통해 주입된다.
	 */
	@Bean
	public BMIInfoView member1()
	{
		//BMI지수 계산을 위한 객체(빈) 생성
		BMICalResult bm = new BMICalResult();
		bm.setLowWeight(18.9);
		bm.setNormal(23);
		bm.setObesity(25);
		bm.setOverWeight(30);
		
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("삽질하기");
		hobbys.add("멍때리기");

		BMIInfoView mem1 = new BMIInfoView();
		mem1.setName("이준승");
		mem1.setHobbys(hobbys);
		mem1.setHeight(177);
		mem1.setWeight(80);
		mem1.setBmiCalResult(bm);
		return mem1;
	}

	@Bean
	public BMIInfoView member2()
	{
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("똥싸기");
		hobbys.add("밥먹기");
		hobbys.add("잠자기");

		BMIInfoView mem2 = new BMIInfoView();
		mem2.setName("이정연");
		mem2.setHobbys(hobbys);
		mem2.setWeight(48);
		mem2.setHeight(162);
		return mem2;
	}
}
