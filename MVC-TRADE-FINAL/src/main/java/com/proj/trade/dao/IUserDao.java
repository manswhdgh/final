package com.proj.trade.dao;

import java.util.List;

import com.proj.trade.bean.Message;

public interface IUserDao {

	List<Message> getbList(Message mboard);

}
