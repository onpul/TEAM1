// 평가페이지 DTO
package com.test.eh;

public class EvaluationDTO
{
	private String q_content, nickName, riding_name;

	
	//getter /setter
	

	public String getNickName()
	{
		return nickName;
	}

	public String getQ_content()
	{
		return q_content;
	}

	public void setQ_content(String q_content)
	{
		this.q_content = q_content;
	}

	public void setNickName(String nickName)
	{
		this.nickName = nickName;
	}

	public String getRiding_name()
	{
		return riding_name;
	}

	public void setRiding_name(String riding_name)
	{
		this.riding_name = riding_name;
	}

	
	
}
