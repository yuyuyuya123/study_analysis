<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!-- Sidebar -->
<aside id="sidebar">
    <ul class="list-unstyled side-menu" style="width: 100%!important;padding-top: 20px;">
        <li>
            <a href="${pageContext.request.contextPath}/page/page_index" >
                <i class="icon">&#61713;</i><span style="font-size: 14px;">主页</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/page/page_userAna" >
                <i class="fa fa-bar-chart-o"></i><span style="font-size: 14px;">客户基本属性分析</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/page/page_courseAna">
                <i class="fa fa-sort-amount-asc" ></i><span style="font-size: 14px;">课程选择分析</span>
            </a>
        </li>
        <%--只有具有 后台管理员 或 超级管理员权限的用户才能看见“后台用户管理”选项和界面--%>
        <security:authorize access="hasRole('ADMIN')">
            <li>
                <a href="${pageContext.request.contextPath}/user/findAll">
                <i class="fa fa-users"></i><span style="font-size: 14px;"> 后台用户管理</span>
            </a>
            </li>
        </security:authorize>
    </ul>
</aside>
<!-- /.Sidebar -->
