package common;

public class MemberDTO
{
	//멤버변수
	private String id;
	private String pw;
	private String name;
	private String email;
	// 눈에 안보이는 디폴트생성자도 포함 ㅎㅎ
	// getter setter만
	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	public String getPw()
	{
		return pw;
	}

	public void setPw(String pw)
	{
		this.pw = pw;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

}
