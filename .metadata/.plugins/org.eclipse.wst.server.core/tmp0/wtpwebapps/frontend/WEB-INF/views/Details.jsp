<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <center>
       <c:forEach items="${user}" var="u">
      <table> 
       <tr><td>Name:</td> <td>${u.drivername}</td></tr>
       <tr><td>Acount_Number:</td> <td>${u.account_number} </td></tr>
       <tr><td>Bank Name:</td> <td>${u.bankname}</td></tr>
       <tr><td>Ifsc_Code:</td> <td>${u.ifsc_code}</td></tr>
       <tr><td>Mobile:</td> <td>${u.mobile}</td></tr>
      </table>
      </c:forEach>
      </center>
</body>
</html>