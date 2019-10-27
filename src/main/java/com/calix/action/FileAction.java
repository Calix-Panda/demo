package com.calix.action;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

public class FileAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8948068982208107430L;
	// 上傳檔案
	private File file;
	// 上傳檔案型別
	private String fileContentType;
	// 上傳檔名
	private String fileFileName;
	// 檔案上傳允許的型別在struts.xml中使用param標籤動態設定了

	
	
	
	/*public String page() {
		return "page";
	}

	public void upload() {
		// 檔案上傳：
		// 1.讀取檔案內容
		// 2.將檔案內容寫到指定檔案
		try {
			String realPath = ServletActionContext.getServletContext().getRealPath("/upload");
			System.out.println("專案的絕對路徑=" + realPath);
			// 建立檔案儲存目錄
			new File(realPath).mkdir();
			File file = new File(realPath + "/" + uploadFileName);
			// 檔案不存在則建立
			if (!file.exists()) {
				file.createNewFile();
			}
			FileOutputStream out = new FileOutputStream(file);
			FileInputStream in = new FileInputStream(upload);
			byte[] buffer = new byte[1024];
			int len = 0;
			// 邊讀邊寫 每次讀取1kb 寫1kb
			while ((len = in.read(buffer)) > 0) {
				out.write(buffer, 0, len);
			}
			System.out.println("檔案上傳成功...");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	
	public String execute() throws Exception{
		String realPath=ServletActionContext.getServletContext().getRealPath("/file"); //取得你當前執行檔案在伺服器上的絕對路徑
		if(file!=null) {
			//建立上傳檔案要存放的檔案及其存放位置（絕對路徑）
			File saveFile=new File(new File(realPath),fileFileName); //上傳檔案存放路徑
			if(!saveFile.getParentFile().exists()) { //獲得檔案目錄，判斷是否存在
				saveFile.getParentFile().mkdirs();  //如果資料夾不存在，建立資料夾
			}
			//利用commons.io包中的工具類，實現檔案複製,把file拷貝發saveFile
			FileUtils.copyFile(file, saveFile);
			return "success";
		}
		else
			return "back";
		
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	
}
