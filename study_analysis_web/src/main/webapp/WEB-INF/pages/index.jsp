<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
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
    <link href="${pageContext.request.contextPath}/css/mstp_map.css" rel="stylesheet">
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
        <h1 style="text-align: center;">欢迎来到主页 (*￣︶￣)</h1>
    </section>
</section>

<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> <!-- jQuery Library -->
<script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script> <!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script> <!-- jQuery Easing - Requirred for Lightbox -->

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
