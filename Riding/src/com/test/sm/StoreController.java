package com.test.sm;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController 
{
	@Autowired
	private SqlSession sqlSession;
	
	//���� ������ ����Ʈ ��
	@RequestMapping(value = "/storelist.action", method=RequestMethod.GET)
	public String storeList(Model model)
	{
		String result = null;
		//String result = "WEB-INF/view/";
		
		IStoreDAO dao = sqlSession.getMapper(IStoreDAO.class);
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		result = "StoreMap.jsp";
		
		return result;
		
		
	}
	
	
	//���� ������ �Է� ��
	@RequestMapping(value = "/storeinsertform.action", method=RequestMethod.GET)
	public String storeInsertForm()
	{
		String result = null;
		
		//String result = "WEB-INF/";
		
		result = "RegisterStore.jsp";
		
		return result;
	}
	
	
	//���� ������ ��
	@RequestMapping(value = "/storeinsert.action", method=RequestMethod.POST)
	public String storeInsert(StoreDTO store)
	{
		String result = null;
		
		IStoreDAO dao = sqlSession.getMapper(IStoreDAO.class);
		
		dao.add(store);
		result += "redirect:storelist.action";
		
		return result;
	}	
	
	
	
	
	
	

}
