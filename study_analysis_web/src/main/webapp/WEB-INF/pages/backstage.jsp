<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">

    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

    <title>移动能效管理平台</title>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link href="${pageContext.request.contextPath}/css/form.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/calendar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/media-player.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/generics.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/menu.css" rel="stylesheet">
</head>
<body id="skin-blur-ocean">
<!-- header -->
<jsp:include page="header.jsp"/>
<!-- /.header -->
<div class="clearfix"></div>

<section id="main" class="p-relative" role="main">

    <!-- Sidebar -->
   <jsp:include page="sidebar.jsp"/>
    <!-- /.Sidebar -->

    <!-- Content -->
    <section id="content" class="container">
        <h4 class="page-title">用户管理</h4>
        <!-- Deafult Table -->
        <div class="block-area" id="defaultStyle">
            <div class="row">
                <div class="col-md-6">
                    <div class="tile">
                        <h2 class="tile-title">所有用户</h2>
                        <table class="table tile">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>用户名</th>
                                <th>角色</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${userList}" var="user">
                                    <tr>
                                        <td>${user.id}</td>
                                        <td>${user.userName} </td>
                                        <td>${user.role.roleName}</td>
                                        <td>${user.statusStr}</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-alt" onclick="location.href='${pageContext.request.contextPath}/user/deleteOneUser?id=${user.id}'">删除</button>
                                            <button type="button" class="btn btn-sm btn-alt" onclick="location.href='${pageContext.request.contextPath}/user/selectUserById?id=${user.id}'">详细信息</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="tile">
                        <h2 class="tile-title">用户信息</h2>
                        <table class="table tile" id="userInfo" >
                            <thead  class="row">
                                <tr>
                                    <th  class="col-md-4">属性名</th>
                                    <th>属性值</th>
                                </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>用户名</td>
                                <td>${userDetails.userName} </td>
                            </tr>
                            <tr>
                                <td>姓名</td>
                                <td>${userDetails.name}</td>
                            </tr>
                            <tr>
                                <td>角色</td>
                                <td>${userDetails.role.roleName}</td>
                            </tr>
                            <tr>
                                <td>角色描述</td>
                                <td>${userDetails.role.roleDesc}</td>
                            </tr>
                            <tr>
                                <td>邮箱</td>
                                <td>${userDetails.email}</td>
                            </tr>
                            <tr>
                                <td>移动电话</td>
                                <td>${userDetails.phoneNum}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- input -->
        <div class="block-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="title">
                        <h2 class="tile-title" style="font-size: 20px">录入新用户</h2>
                    </div>
                </div>
            </div>
            <form class="form-columned" role="form" action="${pageContext.request.contextPath}/user/insertOneUser" method="post">
                <div class="row">
                    <div class="col-md-4">
                        <input type="text" class="form-control input-sm m-b-10" placeholder="用户名" name="userName">
                    </div>
                    <div class="col-md-4">
                        <input type="password" class="form-control input-sm m-b-10" placeholder="密码" name="password">
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <select class="form-control" style="font-size: 0.9em;" name="roleId">
                                <option value="1">超级管理员</option>
                                <option value="2">后台管理员</option>
                                <option value="3" selected="selected">普通用户</option>
                            </select>
                        </div>
                    </div>
                 </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <select class="form-control" style="font-size: 0.9em;" name="status">
                                <option value="1">开启</option>
                                <option value="0" selected="selected">关闭</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <input type="text" class="form-control input-sm m-b-10" placeholder="姓名" name="name">
                    </div>
                    <div class="col-md-4">
                        <input type="text" class="form-control input-sm m-b-10" placeholder="移动电话" name="phoneNum">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <input type="text" class="form-control input-sm m-b-10" placeholder="邮箱" name="email">
                    </div>
                </div>
                <div class="col-md-12">
						<textarea class="form-control m-b-10" readonly="">操作提示：
			角色选择默认“普通用户”，状态默认为开启，如需更改请点击下拉列表手动更改。</textarea>
                </div>
                <div class="col-md-10">
                    <button type="submit" class="btn btn-default">录入</button>
                    <button type="reset" class="btn btn-default">取消</button>
                </div>
            </form>
            <div class="row" style="height:20px;"></div>
        </div>
    </section>
    <br /><br />
</section>


<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> <!-- jQuery Library -->

<!-- Bootstrap -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<!--Media Player-->
<script src="${pageContext.request.contextPath}/js/media-player.min.js"></script> <!-- USA Map for jVectorMap -->
<!-- UX -->
<script src="${pageContext.request.contextPath}/js/scroll.min.js"></script> <!-- Custom Scrollbar -->

<!-- Other -->
<script src="${pageContext.request.contextPath}/js/calendar.min.js"></script> <!-- Calendar -->
<script src="${pageContext.request.contextPath}/js/feeds.min.js"></script> <!-- News Feeds -->


<!-- All JS functions -->
<script src="${pageContext.request.contextPath}/js/functions.js"></script>
</body>
</html>

