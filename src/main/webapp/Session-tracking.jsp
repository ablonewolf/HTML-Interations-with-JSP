<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tracking on User Session</title>
</head>
<body>
<jsp:include page="headerfile.html"/>
<form action="Session-tracking.jsp">
 <b>Add new time: <input type="text" name="newitem"></b>
 <input type="submit" name="submit">
</form>


<%  

List<String> items = (ArrayList<String>) session.getAttribute("list");
	
	if(items==null) {
		items = new ArrayList<String>();
		session.setAttribute("list", items);
	}
	String data = request.getParameter("newitem");
	
	
	
	boolean itemNotEmpty = (data!=null && data.trim().length() > 0);
	boolean itemNotDuplicate = (data != null && !(items.contains(data.trim())));
	
	if (itemNotEmpty && itemNotDuplicate) {    		
		items.add(data.trim());    		
	}
	
	String command = request.getParameter("command");
	if (command != null && command.equals("clear")) {
		items.clear();
	}

%>
<hr>
<b>Here is the list items</b>
<ol>
<%
	for(String item: items) {
		out.println("<li>"+ item + "</li>");
	}

%>
</ol>

<hr>
<a href="Session-tracking.jsp?command=clear">Clear List</a>
<jsp:include page="footerfile.jsp"/>
</body>
</html>