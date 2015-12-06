<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Search.do?cmd=searching" method="post">
<input type="text" name="keyword" />
<input type="submit" value="검색"/>
</form>

<form action="Search.do?cmd=location" method="post">
<input type="submit" value="내주변 관광정보"/>

</form>
</body>
</html>