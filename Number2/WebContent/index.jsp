<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset=utf-8>
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
<form action="queryNum.jsp">
  <p>親愛的使用者您好，歡迎使用-「網內外行動門號查詢」系統</p>
  <p>請輸入您欲查詢之行動門號:<input type="text" name="tel" size="20" value="09xxxxxxxx" maxlength="10"></p>
  <p><input type="submit" value="開始查詢" >
     <input type="reset" value="重新輸入" ></p>
</form>
</div>
</body>
</html>
