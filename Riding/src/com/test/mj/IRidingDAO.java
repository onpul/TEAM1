package com.test.mj;

import org.apache.ibatis.annotations.Param;

public interface IRidingDAO
{
	// 회원가입
	public int join(UserDTO dto); // 완
	
	// 회원가입한 회원의 user_id 알아오기
	public int getuser(); // 완
	
	// 개인정보
	public int profile(UserDTO dto); // 완
	
	// 닉네임 중복 체크
	public int duplicationNickCheck(@Param("nickname")String nickname); // 완
	
	// 3개월 이내의 탈퇴 회원 체크
	public int withdrawCheck(@Param("email")String email, @Param("birthday")String birthday); // 완
	
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
	//public ArrayList<RidingDTO> list(String userId);
}
