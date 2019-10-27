package com.calix.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import com.calix.bean.Information;
import com.calix.dao.InformationDAO;
import com.calix.dao.informationDAOImpl;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class InformationAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private int id;  
	private InformationDAO dao;
	private Date date = new Date();
	private Information information = new Information();
	private List<Information> InformationList = new ArrayList<Information>();
	private Integer[] Checkbox;

	/*
	 * 
	 * */
	public InformationAction() {
		dao = new informationDAOImpl();
	}

	@Override
	public String execute() throws Exception {
		this.InformationList = dao.getAllInfo();
		int count = InformationList.size();
		System.out.println("InformationList Size" + count);
		// System.out.println("execute called");
		return SUCCESS;
	}

	/*
	 * 刪除資料
	 */
	public String removeByID() {
		try {
			System.out.println("選擇的總數:-" + Checkbox.length);
			for (int i = 0; i < Checkbox.length; i++) {
				System.out.println("被選擇的ID有:-" + Checkbox[i]);
				dao.deleteInfo((Checkbox[i]));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		this.InformationList = dao.getAllInfo();
		return SUCCESS;
	}

	public String deleteByID() {
		System.out.println("id value=" + information.getId());
		int id = information.getId();
		try {

			dao.deleteInfo(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.InformationList = dao.getAllInfo();
		return SUCCESS;
	}

	/*
	 * 新增資料
	 */
	public String addInfo() throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.TRADITIONAL_CHINESE);
		information.setPublishtime(date);
		// System.out.println(sdf.format(date));
		try {
			System.out.println(information);
			dao.addInfo(information);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String updateInfo() throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.TRADITIONAL_CHINESE);
		information.setPublishtime(date);
         System.out.println(getInformation());  
        try {  
              
             dao.updateInfo(information);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
       this.InformationList =  dao.getAllInfo();  
        return SUCCESS;  
    }  
	
    public int getId() {  
        return id;  
    }  
  
    public void setId(int id) {  
        this.id = id;  
    }  	

	public Information getInformation() {
		return information;
	}

	public void setInformation(Information information) {
		this.information = information;
	}

	public List<Information> getInformationList() {
		return InformationList;
	}

	public void setInformationList(List<Information> InformationList) {
		this.InformationList = InformationList;
	}

	public Integer[] getCheckbox() {
		return Checkbox;
	}

	public void setCheckbox(Integer[] Checkbox) {
		this.Checkbox = Checkbox;
	}
}