<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="cht.paas.util.CloudLogger" %>
<%@ page import="cht.paas.util.LogLevel" %>
<%@ page import="serviceRequester.QryTelnumOpCodeService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>網內外行動門號查詢系統</title>
<style>
<!--
  form{
    border: 1px dotted #AAAAAA;
    padding: 1px 6px 1px 6px;
    margin:0px;
    font:14px Arial;  
  }
  input{
    color:#00008B;
  }
  input.txt{
    border:1px inset #00008B;
    background-color:#ADD8E6;
  }
  input.btn{
    color:#00008B;
    background-color:#ADD8E6;
    border:1px outset #00008B;
    padding:1px 2px 1px 2px;
  }
  h1{
   font-family:黑體;
   font-size:35px;
   color:#0033cc;
   font-weight:bold; 
  }
-->
</style>
</head>
<body>
<div align=center>
<h1>「網內外行動門號查詢」系統</h1>
<form>
<table>
<%
out.println("<tr>");
out.println("開始查詢手機門號：『" + request.getParameter("tel") + "』   …… <br>");
out.println("</tr>");
out.println("<tr></tr>");
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
String isvAccount = "367f7deaa1ce47b185a0c91cb6d8f714";
String isvKey = "n+ABj+1w6e1Ht2A2ziBh0Q==";
String telNum = request.getParameter("tel");
//out.println("Loading");
QryTelnumOpCodeService qryTelnumOpCodeService = new QryTelnumOpCodeService(isvAccount, isvKey);
//out.println("got service instance.");
String result = qryTelnumOpCodeService.getQryResult(telNum);
//out.println(result);
String Status=result.substring(50,51);
//out.println(Status);
String resMsg=result.substring(108,114);
//out.println(resMsg);
if(Status.equals("0")){
	out.println("<tr> 查詢成功,此手機門號目前為： <font size='3' color='#800080' face='華康海報體W12'>" + resMsg + "</font> </tr>"); 
}else if (Status.equals("1")){
	out.println("<tr>查詢失敗， <font size='3' color='red' face='華康海報體W12'>查無此門號相關資料</font> </tr>");
}else if (Status.equals("2")){
	out.println("<tr>查詢失敗， <font size='3' color='red' face='華康海報體W12'>目前系統忙線中…</font> </tr>");
}else if (Status.equals("3")){
	out.println("<tr>查詢失敗， <font size='3' color='red' face='華康海報體W12'>查詢參數缺少sign或token</font> <tr>");
}else if (Status.equals("4")){
	out.println("<tr>查詢失敗， <font size='3' color='red' face='華康海報體W12'>原因：簽章不正確</font> </tr>");
}else if (Status.equals("5")){
	out.println("<tr>查詢失敗 <font size='3' color='red' face='華康海報體W12'>，原因：授權碼不合法</font> </tr>");
}else if (Status.equals("6")){
	out.println("<tr> <font size='3' color='red' face='華康海報體W12'>呼叫REST Web Service失敗</font> </tr>");
}
%>
</table>
</form>
</div>
</body>
</html>