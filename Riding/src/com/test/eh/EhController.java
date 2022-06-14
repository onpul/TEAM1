package com.test.eh;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ehController
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
	public String evaluationLeaderForm()
	{
		String view = "/WEB-INF/eh/EvaluationLeaderForm.jsp";
		
		return view;
	}
	
	
	//평가(참여자)뷰
	@RequestMapping(value = "/evaluationmemberform.action", method = RequestMethod.GET)
	public String evaluationMemberForm()
	{
		String view = "/WEB-INF/eh/EvaluationMemberForm.jsp";
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
