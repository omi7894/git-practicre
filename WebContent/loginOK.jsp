<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 
    JSP Name : jspName.jsp
    Description : 설명을 기술합니다.
    author PC_Maintenance
    since 2021. 2. 10.
    version 1.0
    Modification Information
       since          author              description
    ===========    =============    ===========================
    2021. 2. 10.     PC_Maintenance     	최초 생성
--%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javaScript" language="javascript">

</script>
</head>
<body>
	<%!
        String id, pw;//선언부
    %>
    <%
        id = request.getParameter("id");
        pw = request.getParameter("pw");
        
        if(id.equals("abcde") && pw.equals("12345")) {
            Cookie cookie = new Cookie("id", id);
            cookie.setMaxAge(60);//쿠키속성 - 60초동안 유지
            response.addCookie(cookie);
            response.sendRedirect("welcome.jsp");//보낸다.
        } else {
            response.sendRedirect("login.html");
        }
    %>
</body>
</html>