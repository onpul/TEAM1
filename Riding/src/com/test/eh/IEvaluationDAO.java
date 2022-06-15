package com.test.eh;

import java.util.ArrayList;

public interface IEvaluationDAO
{
	//라이딩평가 문항 조회
	public ArrayList<EvaluationDTO> questionList();
	
	//작성자 닉네임가져오기
	public String nickNameList(String user_id);
	
	//00 참여자가 참여한 라이딩 모임 이름 알아오기
	public String ridingName(String user_id);
	
	//00 모임의 참여자명단 닉네임 가져오기
	public ArrayList<EvaluationDTO> particiMemberList(String riding_id);
}
