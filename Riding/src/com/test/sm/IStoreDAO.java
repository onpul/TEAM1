package com.test.sm;

import java.util.ArrayList;

public interface IStoreDAO 
{
	//���� �� Ȯ��
	public int count(); 
	
	//���� ����Ʈ(���) Ȯ��
	public ArrayList<StoreDTO> list();
	
	//���� ������ �߰�
	public int add(StoreDTO s);
	
	//���� ������ �˻�
	public StoreDTO search(String restaurant_id);
	
	
}
