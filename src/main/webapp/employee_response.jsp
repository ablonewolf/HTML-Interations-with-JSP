<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Information Confirmation</title>
</head>
<body>
<jsp:include page="headerfile.html"/>
<h2 align="center">Confirming Employee Information</h2>
<div align="center">
<table>
	<tr><td>Employee Name: <b>${param.first} ${param.last} </b> </td> <tr>
	<tr> <td>Age: <b>${param.age }</b> </td> </tr>
	<tr> <td>Email: <b>${param.email}</b> </td> </tr>
	<tr> <td> Post: <b>${param.designation}</b> </td> </tr>
	<tr> <td> Preferred programming languages: <br>
		<ul>
				<%
				String[] languages = request.getParameterValues("favoritelanguage");
				if(languages!=null) {
				for(String language: languages) {
					out.println("<b><li>" + language + "</li></b>");
				}
				}
				else out.println("<b>No preferred programming language for this user.</b>");
				%>
		</ul>	
		 </td>
</table>
</div>
<jsp:include page="footerfile.jsp"/>
</body>
</html>