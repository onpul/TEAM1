package com.test.mj;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
//@SessionAttributes("userId") // 세션 객체에 저장
public class mjController
{
	@Autowired
	private SqlSession sqlSession;
	
	// Main.jsp 요청(main.action)
	@RequestMapping(value = "/main.action", method = RequestMethod.GET)
	public String main()
	{
		String result = null;
		result = "WEB-INF/view/Main.jsp";
		return result;
	}
	
	// JoinForm.jsp 요청(joinform.action)
	@RequestMapping(value ="/joinform.action", method = RequestMethod.GET)
	public String joinForm()
	{
		String result = null;
		result = "WEB-INF/view/JoinForm.jsp";
		return result;
	}
	
	// 회원가입(join.action)
	@RequestMapping(value="/join.action")
	@ResponseBody
	public String join(UserDTO dto)
	{
		// 테스트
		System.out.println("------------join() 진입------------");
		System.out.println("getAge_p_id = " + dto.getAge_p_id());
		System.out.println("getBirthday = " + dto.getBirthday());
		System.out.println("getDining_p_id = " + dto.getDining_p_id());
		System.out.println("getEat_p_id = " + dto.getEat_p_id());
		System.out.println("getEmail = " + dto.getEmail());
		System.out.println("getMood_p_id = " + dto.getMood_p_id());
		System.out.println("getNickname = " + dto.getNickname());
		System.out.println("getPassword = " + dto.getPassword());
		System.out.println("getSex = " + dto.getSex());
		System.out.println("getSex_p_id = " + dto.getSex_p_id());
		System.out.println("getUser_id = " + dto.getUser_id());
		
		int result = 0;
		
		
		IRidingDAO dao = sqlSession.getMapper(IRidingDAO.class);
		
		// 탈퇴한 회원인지 체크
		try
		{
			System.out.println("------------탈퇴한 회원 체크------------");
			System.out.println("dto.getEmail() = " + dto.getEmail());
			
			result = dao.withdrawCheck(dto.getEmail(), dto.getBirthday());
			
			System.out.println("dto.getBirthday() = " + dto.getBirthday());
			System.out.println("result = " + result);
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		// 탈퇴한 회원이라면
		if (result > 0)
		{
			System.out.println("탈퇴한 회원이다!");
			return "1";
		}
		else // 탈퇴한 회원이 아니라면 회원가입 진행
		{
			System.out.println("탈퇴한 회원이 아니다!");
			dao.join(dto);
			
			// 회원가입한 user_id 를 set
			dto.setUser_id(dao.getuser());
			
			//System.out.println("dao.getuser() = " + dao.getuser());
			
			// 개인정보 입력
			dao.profile(dto);
			
			return "0";
		}
	}
	
	// 닉네임 중복체크 버튼 클릭 시 요청(nickcheck.action)
	@RequestMapping(value="/nickcheck.action", method = RequestMethod.POST)
	@ResponseBody
	public String duplicationNickCheckAction(String nickname)
	{
		System.out.println("duplicationNickCheckAction() 진입 ");
		System.out.println("nickname = " + nickname);
		
		// 0 : 사용가능한 닉네임(중복X)
		// 1 : 중복된 닉네임
		return "0"; 
	}
	
	// 탈퇴회원 체크 시 요청(withdrawcheck.action)
	@RequestMapping(value="/withdrawcheck.action", method = RequestMethod.POST)
	@ResponseBody
	public String withdrawCheckAction(String email, String birthday)
	{
		System.out.println("withdrawCheckAction() 진입 ");
		System.out.println("email = " + email);
		System.out.println("birthday = " + birthday);
		
		// 0 : 회원가입 정상 처리
		// 1 : 탈퇴회원(3개월 이내, 가입 불가능)
		return "/join.action";
	}
	
	// 로그인 폼 요청(loginform.action)
	@RequestMapping(value = "/loginform.action", method = RequestMethod.GET)
	public String loginform()
	{
		String result = null;
		result = "WEB-INF/view/LoginForm.jsp";
		return result;
	}
	
	// 로그인 액션(login.action)
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	@ResponseBody
	public String loginAction(Model model, String email, String password)
	{
		// 테스트
		System.out.println("loginAction 진입");
		System.out.println("email = " + email);
		System.out.println("password = " + password);
		
		String result = null;
		String userId = null;
		
		// 0 : 로그인 정상 처리
		// 1 : 일치하는 회원 정보 없음(로그인 실패)

		result = "0";
		
		return result;
	}
	
	// 아이디 찾기 폼 요청(searchidform.action)
	@RequestMapping(value = "/searchidform.action", method = RequestMethod.GET)
	public String searchIdForm()
	{
		String result = null;
		result = "WEB-INF/view/SearchIdForm.jsp";
		return result;
	}
	
	// 아이디 찾기 액션(searchid.action)
	@RequestMapping(value = "searchid.action", method = RequestMethod.POST)
	@ResponseBody
	public String searchIdAction(String nickname, String birthday)
	{
		String result = null;
		
		System.out.println("searchIdAction() 진입 성공");
		System.out.println("nickname = " + nickname);
		System.out.println("birthday = " + birthday);
		
		result = "chmj072@gmail.com";
		
		return result;
	}
	
	// 비밀번호 찾기 폼 요청(searchpasswordform.action)
	@RequestMapping(value = "/searchpasswordform.action", method = RequestMethod.GET)
	public String searchPasswordForm()
	{
		String result = null;
		
		result = "WEB-INF/view/SearchPasswordForm.jsp";
		
		return result;
	}
	
	// 비밀번호 찾기 액션(searchpassword.action)
	@RequestMapping(value = "/searchpassword.action", method = RequestMethod.POST)
	@ResponseBody
	public String searchPasswordAction(String email, String birthday)
	{
		System.out.println("searchPasswordAction() 진입 성공");
		System.out.println("email = " + email);
		System.out.println("birthday = " + birthday);
		
		String result = null;
		
		result = "java006$";
		
		return result;
	}
	
	// 라이딩 리스트 페이지 요청(ridinglist.action)
	@RequestMapping(value = "/ridinglist.action", method = RequestMethod.GET)
	public String ridingList()
	{
		String result = null;
		result = "WEB-INF/view/RidingList.jsp";
		return result;
	}
	
	// 패널티(모임 생성 제한) 적용 여부 확인 액션
	@RequestMapping(value = "/penaltycheck.action", method = RequestMethod.POST)
	@ResponseBody
	public String penaltyCheck(String userId)
	{
		System.out.println("penaltyCheck() 진입 성공");
		System.out.println("userId" + userId);
		String result = null;
		result = "1";
		return result;
	}
	
	// 라이딩 상세보기 페이지 요청(ridingdetail.action) 
	@RequestMapping(value = "/ridingdetail.action", method = RequestMethod.GET)
	public String ridingDetail()
	{
		String result = null;
		result = "WEB-INF/view/RidingDetail.jsp";
		return result;
	}
	
	// 로그인 상태인 회원의 성별 체크 액션(gendercheck.action)
	@RequestMapping(value = "/gendercheck.action", method = RequestMethod.POST)
	@ResponseBody
	public String genderCheck(String userId)
	{
		System.out.println("genderCheck() 진입 성공");
		String result = null;
		result = "female";
		return result;
	}
	
	// 알림 불러오기 액션(notice.action)
	@RequestMapping(value = "/notice.action", method = RequestMethod.POST)
	@ResponseBody
	public List<String> notice(String userId)
	{
		System.out.println("notice() 진입 성공");
		
		//IRidingDAO dao = sqlSession.getMapper(IRidingDAO.class);
		
		List<String> result = new ArrayList<String>();
		
		result.add("알림1");
		result.add("알림2");
		
		return result;
	}
}
