<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
try{
	  String uname = session.getAttribute("uname").toString();
	  String uage = session.getAttribute("uage").toString();
	  String ucollege = session.getAttribute("ucollege").toString();
	  String uid = session.getAttribute("uid").toString();
	  String ucgpa = session.getAttribute("ucgpa").toString();
	  String score = session.getAttribute("score").toString();
	  
	  out.print("<h3 align='center'>Score Card</h3>");
	  
	  out.print("<table align='center'><tr><td>Name :</td><td>"+uname+"</td></tr><tr><td>Age :</td><td>"+uage+"</td></tr><tr><td>College :</td><td>"+ucollege+"</td></tr><tr><td>ID No. :</td><td>"+uid+"</td></tr><tr><td>CGPA :</td><td>"+ucgpa+"</td></tr><tr><td>Score :</td><td>"+score+"</td></tr></table>");
	  
	  out.print(" <h4 align='center'>Career Prediction:</h4>");
		
	  if(score.equals("7.0") || score.equals("10.0")){
			out.print(" <p align='center'>You Have Good Problem Solving Abilities. You can Work as Software Developer and work with the main program codes of the project.</p>");
		}
		else if(score.equals("5.0")){
			out.print(" <p align='center'>Your Problem Solving Abilites are Good and can be improved by practising more. At current condition you can be a Tester in programming world.</p>");
		}
		else if(score.equals("3.0")){
			out.print(" <p align='center'>Your Problem Solving Abilites are Ok and have to improved by practising more. At current condition you can be in the marketing or management sectors of software feild.</p>");
		}
		else if(score.equals("1.5")){
			out.print(" <p align='center'>You have a bit low capability in problem solving and have to workhard and practice more skill developement and you can only be hired for service providing and non-technical job.</p>");
		}
		else{
			out.print(" <p align='center'>You Have To wrok hard on your problem solving skills. At this condition it is difficult for you to get selected for a software job. Working hard will defenitely result in your mental growth and that will make you Fit for Software jobs!!!</p>");
		}
}
catch(Exception e){
	e.printStackTrace();
	out.print("yam");
}
%>
</body>
</html>