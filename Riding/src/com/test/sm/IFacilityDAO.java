package com.test.sm;

import java.util.ArrayList;

public interface IFacilityDAO
{
	//�ü� �� Ȯ��
	public int count();
	
	//�ü� ����Ʈ(���) Ȯ��
	public ArrayList<FacilityDTO> list();
	
	//�ü� ������ �߰�
	public int add(FacilityDTO f);
	
	//�ü� ������ �˻�
	public FacilityDTO search(String facility_id);
}


