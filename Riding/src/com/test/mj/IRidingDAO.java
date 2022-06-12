package com.test.mj;

import java.util.ArrayList;

public interface IRidingDAO
{
	// 닉네임 중복 체크
	public int duplicationNickCheck(String nickname);
	
	// 3개월 이내의 탈퇴 회원 체크
	public int withdrawCheck(String email, String birthday);
	
	// 로그인 액션
	public String login(String email, String password);
	
	// 아이디 찾기 액션
	public String searchId(String nickname, String birthday);
	
	// 비밀번호 찾기 액션
	public String searchPassword(String email, String birthday);
	
	// 패널티 적용 체크 액션
	public int penaltyCheck(String userId);
	
	// 로그인 상태인 회원의 성별 체크 액션
	public String genderCheck(String userId);
	
	// 알림 불러오기 액션
	//public ArrayList<RidingDTO> list();
}
