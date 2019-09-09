package com.proj.trade.dao;

import java.util.List;

import com.proj.trade.bean.Message;
import com.proj.trade.bean.MsgList;

public interface IUserDao {

	List<Message> getmList(Message mboard);

	Message getContents(Integer bNum);

	List<MsgList> getklist(Integer anum);
	/* List<Message> getaContent(Integer bNum); */

}
