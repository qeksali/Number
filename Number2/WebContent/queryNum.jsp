<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="cht.paas.util.CloudLogger" %>
<%@ page import="cht.paas.util.LogLevel" %>
<%@ page import="serviceRequester.QryTelnumOpCodeService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>�����~��ʪ����d�ߨt��</title>
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
   font-family:����;
   font-size:35px;
   color:#0033cc;
   font-weight:bold; 
  }
-->
</style>
</head>
<body>
<div align=center>
<h1>�u�����~��ʪ����d�ߡv�t��</h1>
<form>
<table>
<%
out.println("<tr>");
out.println("�}�l�d�ߤ�������G�y" + request.getParameter("tel") + "�z   �K�K <br>");
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
	out.println("<tr> �d�ߦ��\,����������ثe���G <font size='3' color='#800080' face='�رd������W12'>" + resMsg + "</font> </tr>"); 
}else if (Status.equals("1")){
	out.println("<tr>�d�ߥ��ѡA <font size='3' color='red' face='�رd������W12'>�d�L�������������</font> </tr>");
}else if (Status.equals("2")){
	out.println("<tr>�d�ߥ��ѡA <font size='3' color='red' face='�رd������W12'>�ثe�t�Φ��u���K</font> </tr>");
}else if (Status.equals("3")){
	out.println("<tr>�d�ߥ��ѡA <font size='3' color='red' face='�رd������W12'>�d�߰ѼƯʤ�sign��token</font> <tr>");
}else if (Status.equals("4")){
	out.println("<tr>�d�ߥ��ѡA <font size='3' color='red' face='�رd������W12'>��]�Gñ�������T</font> </tr>");
}else if (Status.equals("5")){
	out.println("<tr>�d�ߥ��� <font size='3' color='red' face='�رd������W12'>�A��]�G���v�X���X�k</font> </tr>");
}else if (Status.equals("6")){
	out.println("<tr> <font size='3' color='red' face='�رd������W12'>�I�sREST Web Service����</font> </tr>");
}
%>
</table>
</form>
</div>
</body>
</html>