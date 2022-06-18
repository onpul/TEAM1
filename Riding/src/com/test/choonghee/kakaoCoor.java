package com.test.choonghee;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;

public class kakaoCoor 
{

    private static String GEOCODE_URL="http://dapi.kakao.com/v2/local/search/address.json?query=";
    private static String GEOCODE_USER_INFO="KakaoAK 930dcf866dcb01d7c5341f6707978c7e"; 
    // REST API Ű�� �־�� �Ѵ�
    
    public static void main(String[] args) {
		
        URL obj;
	
        try{
            //���ڵ��� String�� �Ѱܾ� ���ϴ� �����͸� ���� �� �ִ�.
            String address = URLEncoder.encode("서울 마포구 서교동", "UTF-8");
            
            obj = new URL(GEOCODE_URL+address);
			
            HttpURLConnection con = (HttpURLConnection)obj.openConnection();
            
            //get���� �޾ƿ��� �ȴ�. �ڼ��� ������ īī�������ڼ��Ϳ� �����ִ�.
            con.setRequestMethod("GET");
            con.setRequestProperty("Authorization",GEOCODE_USER_INFO);
            con.setRequestProperty("content-type", "application/json");
            con.setDoOutput(true);
            con.setUseCaches(false);
            con.setDefaultUseCaches(false);
			
            Charset charset = Charset.forName("UTF-8");
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream(), charset));
            
            String inputLine;
            StringBuffer response = new StringBuffer();
            
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
			
            //response ��ü�� ����غ���
            System.out.println(response.toString());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}