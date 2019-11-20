<!DOCTYPE html>
<html>
<head>
<title>Get Started</title>
<style type="text/css">
body {
  background-image: url("BG.jpg");
  background-color: #cccccc;
  background-repeat: no-repeat;
  background-size: 1920px 1080px;
}
input[type="button"]{
	border: none;
	background: #404040;
	color: #ffffff !important;
	font-weight: 100;
	padding: 20px;
	text-transform: uppercase;
	border-radius: 6px;
	display: inline-block;
	transition: all 0.3s ease 0s;
}

input[type="button"]:hover {
	color: #404040 !important;
	font-weight: 700 !important;
	letter-spacing: 3px;
	background: none;
	-webkit-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
	-moz-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
	transition: all 0.3s ease 0s;
}
</style>
</head>
<body>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<% 
String score="0.0";
session.setAttribute("score",score);
out.print("<h1 align='center'>Game Rules !</h1>");
out.print("<ul><li>You will be Facing 2 EASY level problems(each gives 1.5 marks).</li><li>2 MEDIUM level Problems(each gives 2 Marks).</li><li>HARD level problem(3 Marks).</li><li>Enter the complete matrix as the solution.</li></ul>");
out.print("<div align='center'><a href='Easy.jsp'><input type='button' value='Get Started'></a></div>");
String uname = request.getParameter("uname");
String uage = request.getParameter("uage");
String ucollege = request.getParameter("ucollege");
String uid = request.getParameter("uid");
String ucgpa = request.getParameter("ucgpa");

session.setAttribute("uname", uname);
session.setAttribute("uage", uage);
session.setAttribute("ucollege", ucollege);
session.setAttribute("uid", uid);
session.setAttribute("ucgpa", ucgpa);

%>
</body>
</html>