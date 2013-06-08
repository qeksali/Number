<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="cht.paas.util.CloudLogger" %>
<%@ page import="cht.paas.util.LogLevel" %>
<%@ page import="serviceRequester.QryTelnumOpCodeService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
<%
out.println("Start");
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
String isvAccount = "367f7deaa1ce47b185a0c91cb6d8f714";
String isvKey = "n+ABj+1w6e1Ht2A2ziBh0Q==";
String telNum = request.getParameter("tel");
out.println("Loading");
QryTelnumOpCodeService qryTelnumOpCodeService = new QryTelnumOpCodeService(isvAccount, isvKey);
out.println("got service instance.");
String result = qryTelnumOpCodeService.getQryResult(telNum);
out.println(result);


%>

</body>
</html>