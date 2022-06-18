// 평가페이지 DTO
package com.test.eh;

public class EvaluationDTO
{
	
	// dto 는 form 에서 넘어오는 name 과 같아야 자동 getter / setter 된다.
	
	private String nickName, user_id;
	private String riding_id, riding_name;
	private String question_id, q_content;
	private String attendance, kindness, notKindness,dangerRiding, notCompletion, different;
	private String p_member_id, check_atte_id, answer_id;
	private String leaderCheck;
	private String gigan,condition;
	
	
	
	
	
	public String getGigan()
	{
		return gigan;
	}
	public void setGigan(String gigan)
	{
		this.gigan = gigan;
	}
	public String getCondition()
	{
		return condition;
	}
	public void setCondition(String condition)
	{
		this.condition = condition;
	}
	public String getLeaderCheck()
	{
		return leaderCheck;
	}
	public void setLeaderCheck(String leaderCheck)
	{
		this.leaderCheck = leaderCheck;
	}
	public String getNickName()
	{
		return nickName;
	}
	public void setNickName(String nickName)
	{
		this.nickName = nickName;
	}
	public String getUser_id()
	{
		return user_id;
	}
	public void setUser_id(String user_id)
	{
		this.user_id = user_id;
	}
	public String getRiding_id()
	{
		return riding_id;
	}
	public void setRiding_id(String riding_id)
	{
		this.riding_id = riding_id;
	}
	public String getRiding_name()
	{
		return riding_name;
	}
	public void setRiding_name(String riding_name)
	{
		this.riding_name = riding_name;
	}
	public String getQuestion_id()
	{
		return question_id;
	}
	public void setQuestion_id(String question_id)
	{
		this.question_id = question_id;
	}
	public String getQ_content()
	{
		return q_content;
	}
	public void setQ_content(String q_content)
	{
		this.q_content = q_content;
	}
	public String getAttendance()
	{
		return attendance;
	}
	public void setAttendance(String attendance)
	{
		this.attendance = attendance;
	}
	public String getKindness()
	{
		return kindness;
	}
	public void setKindness(String kindness)
	{
		this.kindness = kindness;
	}
	public String getNotKindness()
	{
		return notKindness;
	}
	public void setNotKindness(String notKindness)
	{
		this.notKindness = notKindness;
	}
	public String getDangerRiding()
	{
		return dangerRiding;
	}
	public void setDangerRiding(String dangerRiding)
	{
		this.dangerRiding = dangerRiding;
	}
	public String getNotCompletion()
	{
		return notCompletion;
	}
	public void setNotCompletion(String notCompletion)
	{
		this.notCompletion = notCompletion;
	}
	public String getDifferent()
	{
		return different;
	}
	public void setDifferent(String different)
	{
		this.different = different;
	}
	public String getP_member_id()
	{
		return p_member_id;
	}
	public void setP_member_id(String p_member_id)
	{
		this.p_member_id = p_member_id;
	}
	public String getCheck_atte_id()
	{
		return check_atte_id;
	}
	public void setCheck_atte_id(String check_atte_id)
	{
		this.check_atte_id = check_atte_id;
	}
	public String getAnswer_id()
	{
		return answer_id;
	}
	public void setAnswer_id(String answer_id)
	{
		this.answer_id = answer_id;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*// 평가페이지 뷰 처음 출력할 때
	private String question_id,q_content, nickName, riding_name;
	
	// 평가 기록 
	
	private String eva_record_id, p_member_id, attendance;
	private String menner_score,leader_score,stamina_score;
	private String difficulty_score;
	
	
	public String getQuestion_id()
	{
		return question_id;
	}
	
	public void setQuestion_id(String question_id)
	{
		this.question_id = question_id;
	}
	
	// 속성 재정의
	// 평가지 제출할 때, 넘어오는 애들 기반
	// 작성자 / 모임ID / 
	private String user_id, riding_id;
	// 가장 친절한 사람 / 가장 불친절한 사람
	private String kindness, notKindness;
	// 위험한 라이딩 / 완주 ㄴㄴ
	private String dangerRiding, notCompletion;
	// 실제 숙련도 다른 사람
	
	// 결석자
	private String attendance;
	
	public String getAttendance()
	{
		return attendance;
	}
	
	public void setAttendance(String attendance)
	{
		this.attendance = attendance;
	}
	
	private String different;
	
	public String getUser_id()
	{
		return user_id;
	}
	
	public void setUser_id(String user_id)
	{
		this.user_id = user_id;
	}
	
	public String getRiding_id()
	{
		return riding_id;
	}
	
	public void setRiding_id(String riding_id)
	{
		this.riding_id = riding_id;
	}
	
	public String getKindness()
	{
		return kindness;
	}
	
	public void setKindness(String kindness)
	{
		this.kindness = kindness;
	}
	
	public String getNotKindness()
	{
		return notKindness;
	}
	
	public void setNotKindness(String notKindness)
	{
		this.notKindness = notKindness;
	}
	
	public String getDangerRiding()
	{
		return dangerRiding;
	}
	
	public void setDangerRiding(String dangerRiding)
	{
		this.dangerRiding = dangerRiding;
	}
	
	public String getNotCompletion()
	{
		return notCompletion;
	}
	
	public void setNotCompletion(String notCompletion)
	{
		this.notCompletion = notCompletion;
	}
	
	public String getDifferent()
	{
		return different;
	}
	
	public void setDifferent(String different)
	{
		this.different = different;
	}
	
	
	
	
	
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
	*/

}
