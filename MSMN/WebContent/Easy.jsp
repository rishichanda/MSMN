<!DOCTYPE html>
<html>
<head>
<title>Easy Level</title>
<style type="text/css">
input[type="text"]{ 
    width:65px; height: 30px;
}

body {
  background-image: url("BG.jpg");
  background-color: #cccccc;
  background-repeat: no-repeat;
  background-size: 1920px 1080px;
}
input[type="submit"]{
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

input[type="submit"]:hover {
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

<h1 align="center">Magic Square of Magic Numbers!!</h1>
<h2>Description:</h2>
<p align="justify">A magic square is a square grid filled with distinct positive integers in the range such that each cell   contains a different integer and the sum of the integers in each row, column and diagonal is equal. But in the these problems you have to fill the empty spaces with two digit numbers which are magical(A magical number is one which makes a meaningful number when it is viewed upside-down, e.g : 61-19, 89-68). Make the magic sum in every row and column (exclude diagonals) as 264 such that if all the numbers of the square grid are made upside-down still the square should be meaningful and still sum of rows and columns should be 264.
</p>
<div style="font-size: x-large;" align="center">Easy Level Problem :</div>




<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%

try{
	ServletContext context = pageContext.getServletContext();
	String str = context.getInitParameter("filepath");
	File file = new File(str);
	  Random rand = new Random();
	  int s1=rand.nextInt(20)+1;
	  String key = "ms:"+s1+":";
	  session.setAttribute("key", key);
	  Scanner sc1 = new Scanner(file);
	  int a[][]=new int[4][4];
	  while (sc1.hasNextLine()){
	    String key1=sc1.nextLine();
	   if(key1.equals(key)){
	     for(int i=0;i<4;i++){
	       for(int j=0;j<4;j++){
	         a[i][j]=sc1.nextInt();
	        }
	      }
	    }
	  }
	  String score = session.getAttribute("score").toString();
	  out.print("<form action='First.jsp' method='post'>");
	  out.print("<table align='center'>"); 
	  for(int i=0;i<4;i++){
		  out.print("<tr>");
	       for(int j=0;j<4;j++){
	    	   if(i==0&&j==1||i==0&&j==2||i==1&&j==0||i==1&&j==3||i==2&&j==1||i==2&&j==2||i==3&&j==0||i==3&&j==3){
	    		   out.print("<td><div align='center' id='box' name='"+i+j+"' value="+a[i][j]+" >"+a[i][j]+"</div></td>");
	    	   }
	    	   else{
	    		   out.print("<td><input type='text' name='"+i+j+"' style='text-align:center;'></td>");
	    	   }
	        }
	       out.print("</tr>");
	      }
	  out.print("<tr><td colspan='4' align='center'><input type='submit' value='Check' id='subbut'></td></tr>");
	  out.print("</table>");
	  out.print("</form>");	  
	  out.print("<h3 align='center'>Your Score : "+score+"</h3>");
}
catch(Exception e){
	e.printStackTrace();
	out.print("common");
}

%>
<p align="center">Solving this EASY Level Problem gives you 1.5 marks...</p>
</body>
</html>