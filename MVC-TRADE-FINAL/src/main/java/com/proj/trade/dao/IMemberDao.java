package com.proj.trade.dao;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.proj.trade.bean.Member;
import com.proj.trade.service.MemberManagement;


public interface IMemberDao {

	Member getMemberInfo(String m_Id);

	String getSecurityPwd(String m_Id);

	int hashMapTest(Map<String, String> hMap);

	Map<String, String> hashMapTest2(String m_id);

	int access(Member mb);

}
