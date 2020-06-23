package di;

public class AvengersVO
{
	// 멤버변수
	private String name;
	private String heroName;
	private String ability;
	private String age;

	// 인자생성자
	public AvengersVO(String name, String heroName, String ability, String age)
	{
		this.name = name;
		this.heroName = heroName;
		this.ability = ability;
		this.age = age;
	}

	// setter : 여기서는 생성자가 setter의 역할을 대신함
	// getter
	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getHeroName()
	{
		return heroName;
	}

	public void setHeroName(String heroName)
	{
		this.heroName = heroName;
	}

	public String getAbility()
	{
		return ability;
	}

	public void setAbility(String ability)
	{
		this.ability = ability;
	}

	public String getAge()
	{
		return age;
	}

	public void setAge(String age)
	{
		this.age = age;
	}

}
