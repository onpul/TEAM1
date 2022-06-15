package com.test.mj;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface IRidingDAO
{
	// 회원가입
	public int join(UserDTO dto); // 완
	
	// 회원가입한 회원의 user_id 알아오기
	public int getUser(); // 완
	
	// 개인정보
	public int profile(UserDTO dto); // 완
	
	// 닉네임 중복 체크
	public int duplicationNickCheck(@Param("nickname")String nickname); // 완
	
	// 3개월 이내의 탈퇴 회원 체크
	public int withdrawCheck(@Param("email")String email, @Param("birthday")String birthday); // 완
	
	// 로그인 액션
	public int login(@Param("email")String email, @Param("password")String password);  // 완
	
	// 로그인한 회원의 USER_ID 알아오기
	public int getUserId(@Param("email")String email); // 완
	
	// 사이트 이용 제한 회원 체크
	public int usageRestrictions(int user_id); // 완
	
	// 아이디 찾기 액션
	public String searchId(@Param("nickname")String nickname, @Param("birthday")String birthday); // 완
	
	// 비밀번호 찾기 액션
	public String searchPassword(@Param("email")String email, @Param("birthday")String birthday); // 완
	
	// 패널티 적용 체크 액션
	public int penaltyCheck(String userId);
	
	// 로그인 상태인 회원의 성별 체크 액션
	public String genderCheck(String userId);
	
	// 알림 불러오기 액션
	public List<NoticeDTO> noticeList(@Param("user_id")int user_id);
	
	// 알림 개수 
	public int noticeCount(@Param("user_id")int user_id);
}
