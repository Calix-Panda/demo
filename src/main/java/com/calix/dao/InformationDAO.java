package com.calix.dao;

import java.util.List;

import com.calix.bean.Information;
/**
 * Information類對應的DAO接口，提供一些與信息相關的數據庫CRUD操作的公開的方法聲明
 */
public interface InformationDAO {

	Information getInfoById(int id);
	//新增
	boolean addInfo(Information info);
	//更新
	boolean updateInfo(Information info);
	//刪除
	boolean deleteInfo(int id);
	//顯示在內容上
	List<Information> getAllInfo();
}
