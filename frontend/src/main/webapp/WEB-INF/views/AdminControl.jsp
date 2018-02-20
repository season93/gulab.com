<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
  div{
   text-align: center;
  }
  p{
  text-align: center;
  }
</style>
</head>
<body> <div>
   
               
     DRIVER DETAILS
  <hr>  
  <p>Enter the DriverId to get details</p>
  <form action="SearchId" method="post">
     <input type="number" name="search_id"  placeholder="Enter ID">
     <input type="submit" value="search">
  </form>
    <p>Enter the DriverName to get details</p>
   <form action="SearchName" method="post">
     <input type="text" name="search_name"placeholder="Enter Name">
     <input type="submit" value="search">
  </form>
   <hr>
   DRIVERS COUNT AND STATUS
     
</body>
</html>