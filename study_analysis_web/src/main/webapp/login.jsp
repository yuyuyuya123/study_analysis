<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">

    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

    <title>登录</title>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link href="${pageContext.request.contextPath}/css/form.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/generics.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/icons.css" rel="stylesheet">

</head>
<body id="skin-blur-ocean">
<section id="login">
    <header>
        <h1>网站后台管理系统</h1>
    </header>

    <!-- Login -->
    <form class="box tile animated active" id="box-login" action="${pageContext.request.contextPath}/login" method="post">
        <h2 style="margin-left: 170px;">登录</h2>
        <div class="input-group m-b-20">
            <input type="text" class="form-control p-l-20" placeholder="用户名" name="userName">
            <span class="input-group-addon"><i class="icon">&#61873;</i></span>
        </div>
        <div class="input-group m-b-20">
            <input type="password" class="form-control p-l-20" placeholder="密码" name="password">
            <span class="input-group-addon"><i class="icon">&#61756;</i></span>
        </div>

        <label>
            <input type="checkbox">
            记住 下次登录
        </label>
        <button class="btn btn-s pull-right" type="submit">登录</button>

    </form>



</section>

<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> <!-- jQuery Library -->

<!-- Bootstrap -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<!--  Form Related -->
<script src="${pageContext.request.contextPath}/js/icheck.js"></script> <!-- Custom Checkbox + Radio -->

<!-- All JS functions -->
<script src="${pageContext.request.contextPath}/js/functions.js"></script>
</body>
</html>

