package com.test.eh;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MyPageMainController implements Controller
{
	IMyPageMainDAO dao;
	
	// 사용자 정의 생성자는 기본 생성자도 만들어줘야함!!
	public void setDao(IMyPageMainDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		ArrayList<MyPageMainDTO> result = new ArrayList<MyPageMainDTO>();
		
		//이전페이지로부터 user_id 수신
		//String user_id = request.getParameter("user_id");
		
		// !! 현재는 임시 session 사용전!
		String user_id = "2";
		
		result = dao.memberList(user_id);
		
		// 뷰 에게 넘겨줄 데이터
		
		String email = "";
		String nickname = "";
		String oneword="";
		String pi_address="";
		
		//System.out.println(result.size());
		for (MyPageMainDTO dto : result)
		{
			email = dto.getEmail();
			nickname = dto.getNickname();
			oneword = dto.getOneword();
			pi_address = dto.getPi_address();
		}
		
		mav.addObject("email", email);
		mav.addObject("nickname", nickname);
		mav.addObject("oneword", oneword);
		mav.addObject("pi_address", pi_address);
		
		mav.setViewName("/WEB-INF/eh/MyPageMain.jsp");
		return mav;
	}
	
}
