<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<title>公告一覽</title>
</head>
<body>
	<main role="main">
	<section class="text-center">
		<div class="container">
			<h1 class="jumbotron-heading">公告一覽</h1>
			<s:form action="removeByID">
				<s:submit type="button" cssClass="btn btn-primary" value="刪除已選擇的" align="left"
					onClick="return confirm('Do you want to delete these contacts?');" />
				<display:table id="row" class="table table-striped dataTable" export="true"
					name="informationList" size="auto" pagesize="5" cellpadding="5px;"
					cellspacing="5px;" requestURI="">
					<display:setProperty name="paging.banner.placement" value="bottom" />
					<display:column title="選擇">
						<s:checkbox id="check" name="Checkbox"
							fieldValue="%{#attr.row.id}" theme="simple"
							value="#{attr.row.check}" />
					</display:column>
					<display:column property="id" title="項次" sortable="true" />
					<display:column property="title" title="標題" />
					<display:column property="content" title="內文" />
					<display:column property="publishtime"
						format="{0,date,yyyy/MM/dd HH:mm}" title="發布時間" />
					<display:column property="deadlinetime"
						format="{0,date,yyyy/MM/dd HH:mm}" title="截止時間" />
					<display:column property="publishuser" title="發布者" />
					<display:setProperty name="export.excel.filename"
						value="ContactDetails.xls" />
					<display:setProperty name="export.pdf.filename"
						value="ContactDetails.pdf" />
					<display:setProperty name="export.csv.filename"
						value="ContactDetails.csv" />

					<s:url action="editLink" var="editUrl">
						<s:param name="id" value="%{#attr.row.id}" />
						<s:param name="title" value="%{#attr.row.title}" />
						<s:param name="content" value="%{#attr.row.content}" />
						<s:param name="publishtime" value="%{#attr.row.publishtime}" />
						<s:param name="deadlinetime" value="%{#attr.row.deadlinetime}" />
						<s:param name="publishuser" value="%{#attr.row.publishuser}" />
					</s:url>

					<display:column title="">
						<s:a href="%{editUrl}" cssClass="btn btn-warning">編輯</s:a>
					</display:column>

					<s:url action="deleteByID" var="delUrl">
						<s:param name="information.id" value="%{#attr.row.id}" />
					</s:url>
					<display:column title="">
						<s:a href="%{delUrl}" cssClass="btn btn-primary" onclick="return confirm('您確定要刪除嗎?')">刪除</s:a>
					</display:column>
				</display:table>
			</s:form>
			<s:a action="forwordInfomation" cssClass="btn btn-success">點我新增</s:a>
		</div>
	</section>
	</main>
</body>
</html>