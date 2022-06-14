package com.test.eh;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

public class QuestionDAO
{
	//인터페이스 자료형을 속성으로 구성하기
	//private DataSource dataSource;
	
	//setter 구성
	/*
	public void setDataSource(DataSource dataSource)
	{
		System.out.println("혹시 너?");
		this.dataSource = dataSource;
	}
	*/
	
	
	public ArrayList<tempDTO> list()
	{
		ArrayList<tempDTO> result = null;
		String q_content;
		try
		{
			Connection conn = DBConn.getConnection();
			System.out.println(conn);
			String sql ="SELECT Q_CONTENT FROM QUESTION";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next())
			{
				//q_content = rs.getString("Q_CONTENT");
				//System.out.println(rs.getString("Q_CONTENT"));
				tempDTO dto = new tempDTO();
				System.out.println("1");
				dto.setTemp(rs.getString("Q_CONTENT"));
				
				
				//result.add(rs.getString("Q_CONTENT"));
				System.out.println("2");
				System.out.println(dto.getTemp());
				result.add(dto);
				System.out.println("3");
			}
			
			rs.close();
			pstmt.close();
			DBConn.close();
			
		} catch (Exception e)
		{
			System.out.println("QuestionDAO.java");
			System.out.println(e.toString());
		}
		return result;
	};
}
