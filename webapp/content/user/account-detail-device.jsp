<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/taglibs.jsp"%>
<%pageContext.setAttribute("currentHeader", "user");%>
<%pageContext.setAttribute("currentMenu", "user");%>
<!doctype html>
<html lang="en">

  <head>
    <%@include file="/common/meta.jsp"%>
    <title><spring:message code="account-device.account-device.input.title" text="编辑"/></title>
    <%@include file="/common/s3.jsp"%>
  </head>

  <body>
    <%@include file="/header/user.jsp"%>

    <div class="row-fluid">
	  <%@include file="/menu/user.jsp"%>

	  <!-- start of main -->
      <section id="m-main" class="col-md-10" style="padding-top:65px;">

		<h4>账号详情 - ${accountInfo.username}</h4>

		<ul class="nav nav-tabs">
		  <li role="presentation" class=""><a href="account-detail-index.do?infoId=${param.infoId}">详情</a></li>
		  <li role="presentation" class=""><a href="account-detail-password.do?infoId=${param.infoId}">密码</a></li>
		  <li role="presentation" class=""><a href="account-detail-avatar.do?infoId=${param.infoId}">头像</a></li>
		  <li role="presentation" class=""><a href="account-detail-log.do?infoId=${param.infoId}">日志</a></li>
		  <li role="presentation" class="active"><a href="account-detail-device.do?infoId=${param.infoId}">设备</a></li>
		  <li role="presentation" class=""><a href="account-detail-token.do?infoId=${param.infoId}">会话</a></li>
		  <li role="presentation" class=""><a href="account-detail-person.do?infoId=${param.infoId}">人员</a></li>
		</ul>

      <div class="panel panel-default">

		<table class="table">
		  <thead>
		    <tr>
			  <th>设备标识</th>
			  <th>类型</th>
			  <th>操作系统</th>
			  <th>客户端</th>
			  <th>创建时间</th>
			  <th>状态</th>
			</tr>
		  </thead>
		  <tbody>
		    <c:forEach var="item" items="${accountDevices}">
		    <tr>
			  <td>${item.code}</td>
			  <td>${item.type}</td>
			  <td>${item.os}</td>
			  <td>${item.client}</td>
			  <td>${item.createTime}</td>
			  <td>${item.status}</td>
		    </tr>
			</c:forEach>
		  </tbody>
		</table>

      </div>

      </section>
	  <!-- end of main -->
	</div>

  </body>

</html>
