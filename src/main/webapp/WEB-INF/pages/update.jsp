<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment-with-locales.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<title>更新公告</title>
</head>
<body>
	<main role="main">
	<section class="text-center">
		<div class="container">
			<h1 class="jumbotron-heading">更新</h1>
			<form action="updateInfo.action" method="post" style="align: center">
				<div class="form-group row">
					<label for="infoTitle">標題</label> <input type="text"
						class="form-control" id="infoTitle" name="information.title" value="<s:property value="%{#parameters.title}" />">
				</div>
				<div class="form-group row">
					<label for="infoContent">內文</label>
					<textarea class="form-control" id="infoContent"
						name="information.content" rows="3" ><s:property value="%{#parameters.content}" /></textarea>
				</div>		
				<div class="form-group row">
					<label for="infoPublishuser">截止時間</label>
	                <div class="input-group date" id="datetimepicker2" data-target-input="nearest">
	                    <input type="text" name="information.deadlinetime" value="<s:property value="%{#parameters.deadlinetime}" />" class="form-control datetimepicker-input" data-target="#datetimepicker2"/>
	                    <div class="input-group-append" data-target="#datetimepicker2" data-toggle="datetimepicker">
	                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
	                    </div>
	                </div>
            	</div>
				<div class="form-group row">
					<label for="infoPublishuser">公告者</label> <input type="text"
						class="form-control" id="infoPublishuser" value="<s:property value="%{#parameters.publishuser}"/>"
						name="information.publishuser">
						<input type="hidden"
						class="form-control" value="<s:property value="%{#parameters.id}" />"
						name="information.id">
						<input type="hidden"
						class="form-control" value="<s:property value="%{#parameters.publishtime}" />"
						name="information.publishtime">
				</div>
				<table class="table">
					<tr>
						<td colspan="2">
							<input type="submit" class="btn btn-success" value="更新公告">
							<s:a action="backIndex" cssClass="btn btn-primary">點我回首頁</s:a>
						</td>
					</tr>
				</table>				
			</form>			
		</div>
	</section>
	</main>
</body>
<script type="text/javascript">
            $(function () {
                $('#datetimepicker2').datetimepicker({
                	locale: 'zh-tw'
                });
            });
</script>
</html>