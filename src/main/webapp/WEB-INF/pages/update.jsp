<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.css">
<script
	src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>
<title>更新公告</title>
<sx:head />
</head>
<body>
	<div class="container">
		<h1>更新</h1>
		<s:form action="updateInfo" method="post">
			<s:textfield name="information.title" label="標題"
				value="%{#parameters.title}" />
			<s:textfield name="information.content" label="內文"
				value="%{#parameters.content}" />
			<sx:datetimepicker name="information.deadlinetime" label="截止日期" displayFormat="yyyy/MM/dd HH:mm"
				value="%{'today'}" />
			<s:textfield name="information.publishuser" label="公告者"
				value="%{#parameters.publishuser}" />
			<s:hidden name="information.publishtime" label="日期" />
			<s:hidden name="information.id" value="%{#parameters.id}" label="主鍵" />
			<s:submit value="Add Information" align="center" />

			<table>
				<tr>
					<td colspan="2"><s:submit value="更新" theme="simple" /> <s:a
							action="backIndex">點我回首頁</s:a></td>
				</tr>
			</table>
		</s:form>


	</div>

</body>
</html>