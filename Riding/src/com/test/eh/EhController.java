package com.test.eh;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EhController
{
	// 마이페이지메인 뷰 --> 따로 컨트롤러 만듬.
	/*
	@RequestMapping(value = "/mypagemain.action", method = RequestMethod.GET)
	public String myPageMainView()
	{
		String view = "/WEB-INF/eh/MyPageMain.jsp";
		return view;
	}
	*/
	
	@Autowired
	private SqlSession sqlSession;
	
	
	// 개인정보수정폼 뷰
	@RequestMapping(value = "/myinfoupdateform.action", method = RequestMethod.GET)
	public String myInfoUpdateForm()
	{
		String view = "/WEB-INF/eh/MyInfoUpdateForm.jsp";
		return view;
	}
	
	// 개인정보수정폼 뷰 - 닉네임 변경
	@RequestMapping(value = "/nicknameupdateform.action", method = RequestMethod.GET)
	public String nickNameUpdateForm()
	{
		String view = "/WEB-INF/eh/NickNameUpdateForm.jsp";
		return view;
	}
	
	// 개인정보수정폼 뷰 - 한마디 변경
	@RequestMapping(value = "/onewordupdateform.action", method = RequestMethod.GET)
	public String oneWordUpdateForm()
	{
		String view = "/WEB-INF/eh/OneWordUpdateForm.jsp";
		return view;
	}
	
	// 개인정보수정폼 뷰 - 프로필 사진 변경
	@RequestMapping(value = "/profilephotoupdateform.action", method = RequestMethod.GET)
	public String profilePhotoUpdateForm()
	{
		String view = "/WEB-INF/eh/ProfilePhotoUpdateForm.jsp";
		return view;
	}
	
	
	//라이딩스타일조회및수정폼 뷰
	@RequestMapping(value = "/ridingstylelistupdateform.action", method = RequestMethod.GET)
	public String ridingStyleListUpdateForm()
	{
		String view = "/WEB-INF/eh/RidingStyleListUpdateForm.jsp";
		return view;
	}
	
	
	//참여중인라이딩모임조회 뷰
	@RequestMapping(value = "/participateridinglist.action", method = RequestMethod.GET)
	public String participateRidingList()
	{
		String view = "/WEB-INF/eh/ParticipateRidingList.jsp";
		return view;
	}
	
	
	//평가(방장) 뷰
	@RequestMapping(value = "/evaluationleaderform.action", method = RequestMethod.GET)
	public String evaluationLeaderForm(Model model)
	{
		
		String view = "/WEB-INF/eh/EvaluationLeaderForm.jsp";
		//마이바티스 방법으로 dao 인스턴스 생성
		IEvaluationDAO dao = sqlSession.getMapper(IEvaluationDAO.class);
		
		
		// 처음 조회할 때
		// 모임명 / 작성자 닉네임 / 참여자 명단 / 문항 / 가져오기
		String user_id = "2";
		String riding_id = "1";
		
		// 해당 사용자가 속한 평가기간에 맞는 모임 조회
		int dateFlag = dao.evalDateFlagList(user_id);
		//System.out.println("dateFlag : " + dateFlag);
		model.addAttribute("dateFlag", dateFlag);
		
		
		// 해당 사용자가 방장인지 조회
		int leaderFlag = dao.leaderFlagList(user_id);
		//System.out.println("leaderFlag"+leaderFlag);
		model.addAttribute("leaderFlag", leaderFlag);
		
		// 문항 조회 
		ArrayList<EvaluationDTO> leaderQuestionList = new ArrayList<EvaluationDTO>();
		leaderQuestionList = dao.leaderQuestionList();
		model.addAttribute("leaderQuestionList",leaderQuestionList);
		
		
		for (int i = 0; i < leaderQuestionList.size(); i++)
		{
			System.out.println("문항 id: " + leaderQuestionList.get(i).getQuestion_id());
			System.out.println("문항 내용: " + leaderQuestionList.get(i).getQ_content());
			//model.addAttribute("leaderQuestion", arg1)
		}
		
		
		// 모임명 조회
		EvaluationDTO riding = dao.ridingNameList(user_id);
		model.addAttribute("riding",riding);
		
		//System.out.println("라이딩모임id : " + riding.getRiding_id());
		//System.out.println("라이딩모임명 : " + riding.getRiding_name());
		
		
		// 작성자 조회(닉네임)
		EvaluationDTO userDto = dao.userNickNameList(user_id);
		model.addAttribute("userDto",userDto);
		//System.out.println("참여자 이름 : " + userDto.getNickName());
		//System.out.println("참여자 이름 : " + userDto.getUser_id());
		
		
		// 참여자 명단 조회
		ArrayList<EvaluationDTO> memberList = new ArrayList<EvaluationDTO>(); 
		memberList = dao.memberList(riding_id);
		model.addAttribute("memberList",memberList);
		/*
		System.out.println(memberList.size());
		for (int i = 0; i < memberList.size(); i++)
		{
			System.out.println("참여자명단(닉네임) :" + memberList.get(i).getNickName());
			System.out.println("참여자명단(id) :" + memberList.get(i).getUser_id());
		}
		*/
		
		// 제출 여부 판단 조회
		int answerFlag = dao.answerFlag(user_id);
		model.addAttribute("answerFlag",answerFlag);
		//System.out.println("제출여부 : " + answerFlag);
		
		
		return view;
	}
	
	//평가지(방장)폼에서 입력 받은 값 insert 시키기.
	@RequestMapping(value = "/evaluationinsertleader.action",method = RequestMethod.GET)
	public String evalAdd(EvaluationDTO dto)
	{
		String view = "test.jsp";
		String user_id = "2";
		String riding_id = "1";
		IEvaluationDAO dao = sqlSession.getMapper(IEvaluationDAO.class);
		
		String p_member_id = dao.searchPMemberId(user_id);
		//System.out.println("피멤버아이디:"+p_member_id);
		
		return view;
	}			
	
	
	//평가(참여자)뷰
	@RequestMapping(value = "/evaluationmemberform.action", method = RequestMethod.GET)
	public String evaluationMemberForm(Model model)
	{
		// 컨트롤러가 호출하는 뷰 url
		String view = "/WEB-INF/eh/EvaluationMemberForm.jsp";
		
		IEvaluationDAO dao = sqlSession.getMapper(IEvaluationDAO.class);
		
		
		
		// 평가지 문항 가져오기
		/*
		ArrayList<EvaluationDTO> temp = dao.questionList();
		
		for (int i = 0; i < temp.size(); i++)
		{
			model.addAttribute("q"+i, temp.get(i));
		}
		
		//model.addAttribute("q_content", dao.questionList());
		
		//평가지 작성자 닉네임 가져오기
		//!! 지금은 user_id 임시로 줌.
		String user_id = "2";
		String riding_id="1";
		model.addAttribute("nickname", dao.nickNameList(user_id));
		
		//작성자가 참여한 모임 이름 가져오기
		model.addAttribute("ridingName", dao.ridingName(user_id));
		
		
		//해당 모임의 참여자 명단 가져오기
		model.addAttribute("memberList", dao.particiMemberList(riding_id));
		
		*/
		return view;
	}
	
	//라이딩기록조회 뷰
	@RequestMapping(value = "/myridingrecordlist.action", method = RequestMethod.GET)
	public String myRidingRecordList()
	{
		String view = "/WEB-INF/eh/MyRidingRecordList.jsp";
		return view;
	}
	
	//라이딩기록조회 뷰 - 상세보기
	@RequestMapping(value = "/myridingrecord.action", method = RequestMethod.GET)
	public String myRidingRecord()
	{
		String view = "/WEB-INF/eh/MyRidingRecord.jsp";
		return view;
	}
	
	
	//나의등급조회 뷰
	@RequestMapping(value = "/myrationandscorelist.action", method = RequestMethod.GET)
	public String myRationAndScoreList()
	{
		String view = "/WEB-INF/eh/MyRationAndScoreList.jsp";
		return view;
	}
	
	
	//내가작성한게시글조회 뷰
	@RequestMapping(value = "/myreviewlist.action", method = RequestMethod.GET)
	public String myReviewList()
	{
		String view = "/WEB-INF/eh/MyReviewList.jsp";
		return view;
	}
	
	
	//패널티조회 뷰
	@RequestMapping(value = "/mypenaltylist.action", method = RequestMethod.GET)
	public String myPenaltyList()
	{
		String view = "/WEB-INF/eh/MyPenaltyList.jsp";
		return view;
	}
	
	
	//회원탈퇴 뷰
	@RequestMapping(value = "/membersecession.action", method = RequestMethod.GET)
	public String memberSecession()
	{
		String view = "/WEB-INF/eh/MemberSecession.jsp";
		return view;
	}
	
	//쪽지 뷰
	@RequestMapping(value = "/letter.action", method = RequestMethod.GET)
	public String letter()
	{
		String view = "/WEB-INF/eh/Letter.jsp";
		return view;
	}
	
	//쪽지 뷰
	@RequestMapping(value = "/letterlist.action", method = RequestMethod.GET)
	public String letterList()
	{
		String view = "/WEB-INF/eh/LetterList.jsp";
		return view;
	}
	
	//쪽지 뷰
	@RequestMapping(value = "/letterresendform.action", method = RequestMethod.GET)
	public String letterReSendForm()
	{
		String view = "/WEB-INF/eh/LetterReSendForm.jsp";
		return view;
	}
	
	//쪽지 뷰
	@RequestMapping(value = "/lettersendform.action", method = RequestMethod.GET)
	public String letterSendForm()
	{
		String view = "/WEB-INF/eh/LetterSendForm.jsp";
		return view;
	}
	
	//쪽지 뷰
	@RequestMapping(value = "/lettersendform2.action", method = RequestMethod.GET)
	public String letterSendForm2()
	{
		String view = "/WEB-INF/eh/LetterSendForm2.jsp";
		return view;
	}
}
