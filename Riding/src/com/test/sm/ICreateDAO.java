package com.test.sm;

import java.util.ArrayList;

public interface ICreateDAO 
{
	
	//���Ӽ� Ȯ��
	public int count(); 
		
	//���� ����Ʈ(���) Ȯ��
	public ArrayList<CreateDTO> list();
		
	//���� ������ �߰�
	public int add(CreateDTO c);
		
	//���� ������ �˻�
	public CreateDTO search(String riding_id);
	
	
	

}
