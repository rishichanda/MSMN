<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
body {
  background-image: url("BG.jpg");
  background-color: #cccccc;
  background-repeat: no-repeat;
  background-size: 5120px 2880px;
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
String key = session.getAttribute("key").toString();
ServletContext context = pageContext.getServletContext();
String str = context.getInitParameter("filepath");
File file = new File(str);
Scanner sc = new Scanner(file);
int a[][]=new int[4][4];
while (sc.hasNextLine()){
	String key1=sc.nextLine();
	if(key1.equals(key)){
		for(int i=0;i<4;i++){
			for(int j=0;j<4;j++){
       			a[i][j]=sc.nextInt();
      		}
    	}
  	}
}
String score = session.getAttribute("score").toString();
if(score.equals("0.0") || score.equals("1.5")){
	int count=0;
	for(int i=0;i<4;i++){
	    for(int j=0;j<4;j++){
	    	if(i==0&&j==1||i==0&&j==2||i==1&&j==0||i==1&&j==3||i==2&&j==1||i==2&&j==2||i==3&&j==0||i==3&&j==3){
	    	}
	    	else{
	    		if(!request.getParameter(i+""+j).equals(Integer.toString(a[i][j]))){
	    			count=1;
	    			break;
	    		}
			}
	    }
	}
	if(count==1){
		out.print("<h1 align='center'>wrong answer!</h1>");
		//out.print("<h3 align='center'>Your Score : "+score+"</h3>");
		out.print("<div align='center'><a href='Result.jsp'><input type='button' value='END'></a></div>");
	}
	else{
		out.print("<h1 align='center'>Right answer!</h1>");
		out.print("<h2 align='center'>Do you wish to continue ?</h2>");
		if(score.equals("0.0")){
			//score="1.5";
			session.setAttribute("score","1.5");
			out.print("<div align='center'><a href='Easy.jsp'><input type='button' value='Yes !'></a></div>");
			out.print("<br>");
		}
		else{
			//score="3.0";
			session.setAttribute("score","3.0");
			out.print("<div align='center'><a href='Medium.jsp'><input type='button' value='Yes !'></a></div>");
			out.print("<br>");
		}
		out.print("<div align='center'><a href='Result.jsp'><input type='button' value='No !'></a></div>");
	}
}
else if(score.equals("3.0")||score.equals("5.0")){
	int count=0;
	for(int i=0;i<4;i++){
	    for(int j=0;j<4;j++){
	    	if(i==0&&j==2||i==1&&j==1||i==2&&j==0||i==2&&j==3||i==3&&j==1){
	    	}
	    	else{
	    		if(!request.getParameter(i+""+j).equals(Integer.toString(a[i][j]))){
	    			count=1;
	    			break;
	    		}
			}
	    }
	}
	if(count==1){
		out.print("<h1 align='center'>wrong answer!</h1>");
		//out.print("<h3 align='center'>Your Score : "+score+"</h3>");
		out.print("<div align='center'><a href='Result.jsp'><input type='button' value='END'></a></div>");
	}
	else{
		out.print("<h1 align='center'>Right answer!</h1>");
		out.print("<h2 align='center'>Do you wish to continue ?</h2>");
		if(score.equals("3.0")){
			//score="5.0";
			session.setAttribute("score","5.0");
			out.print("<div align='center'><a href='Medium.jsp'><input type='button' value='Yes !'></a></div>");
			out.print("<br>");
		}
		else{
			//score="7.0";
			session.setAttribute("score","7.0");
			out.print("<div align='center'><a href='Hard.jsp'><input type='button' value='Yes !'></a></div>");
			out.print("<br>");
		}
		out.print("<div align='center'><a href='Result.jsp'><input type='button' value='No !'></a></div>");
	}
}
else if(score.equals("7.0")){
	int count=0;
	for(int i=0;i<4;i++){
	    for(int j=0;j<4;j++){
	    	if(i==0&&j==2||i==2&&j==1||i==3&&j==3){
	    	}
	    	else{
	    		if(!request.getParameter(i+""+j).equals(Integer.toString(a[i][j]))){
	    			count=1;
	    			break;
	    		}
			}
	    }
	}
	if(count==1){
		out.print("<h1 align='center'>wrong answer!</h1>");
		//out.print("<h3 align='center'>Your Score : "+score+"</h3>");
		out.print("<div align='center'><a href='Result.jsp'><input type='button' value='END'></a></div>");
	}
	else{
		out.print("<h1 align='center'>Right answer!</h1>");
		//score="10.0";
			session.setAttribute("score","10.0");
			out.print("<div align='center'><a href='Result.jsp'><input type='button' value='END'></a></div>");

	}
}
else{
	out.print("<div align='center'><a href='Result.jsp'><input type='button' value='END'></a></div>");
}
}
catch(Exception e){
	e.printStackTrace();
	out.print("okokok");
}
%>
</body>
</html>