<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Form</title>
</head>
<body>
<jsp:include page="headerfile.html"/>

<h2 align="center">This is the employee form</h2>

<div align="center">
<form  action="employee_response.jsp">
	<table>
    <tr>
      <td align="right"><b>First Name:</b></td>
      <td align="left"><input type="text" name="first" /></td>
    </tr>
    <tr>
      <td align="right"><b>Last Name:</b></td>
      <td align="left"><input type="text" name="last" /></td>
    </tr>
    <tr>
      <td align="right"><b>Email:</b></td>
      <td align="left"><input type="text" name="email" /></td>
    </tr>
    <tr>
      <td align="right"><b>Designation:</b></td>
      <td align="left"><select name="designation">
      				  <option>Software Engineer(Java)</option>
      				  <option>Software Engineer(Web)</option>
      				  <option>Software Engineer(Embedded Systems)</option>
      				  <option>Team lead</option>
      				  <option>Project Manager</option>
      				  <option>Instructor</option>
      				  </select></td>
    </tr>
    <tr> <td align="center"> <b>Favorite Programming Language: </b></td> 
    <td> <input type="checkbox" name="favoritelanguage" value="Java"> <b>Java</b> 
     <input type="checkbox" name="favoritelanguage" value="Python"> <b>Python</b> 
     <input type="checkbox" name="favoritelanguage" value="C#"> <b>C#</b> 
     <input type="checkbox" name="favoritelanguage" value="Javascript"> <b>Javascript</b> 
     <input type="checkbox" name="favoritelanguage" value="Typescript"> <b>Typescript</b> </td>
    </tr>
    <tr>
      <td align="right"><b>Age:</b></td>
      <td align="left"><input type="number" name="age" /></td>
    </tr>
  </table>
  <p> <input type="submit" value="Submit"> </p>
</form>
</div>
<jsp:include page="footerfile.jsp"/>
</body>
</html>