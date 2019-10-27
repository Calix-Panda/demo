<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>檔案上傳測試</title>
</head>
<body>

	<s:form action="fileUpload" method="POST"
		enctype="multipart/form-data">
		<s:file name="file" label="選擇檔案" />
		<s:submit value="上傳" />
	</s:form>
	<s:a action="backIndex">點我回首頁</s:a>
	測試
</body>
</html>