<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>闰年</title>
</head>
<body>
<!-- 声明一个方法，判断某一个年份是否是闰年 -->
	<%!
	boolean isLeap (int year){
		boolean flag = false;
		if(year%4==0&&year%100!=0||year%4==0){
			flag = true;
		}
		return flag;
	}
	%>
	<%
	int count=0;
	for(int i = 2000;i<=2013;i++){
		if(isLeap(i)){
			count++;
		}
	}
	%>
	2000年到2013年一共有<%=count %>个闰年！

</body>
</html>