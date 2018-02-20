<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
input[type=submit] {
    background-color: green;
    border: none;
    color: white;
    padding: 10px 14px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
div{
  text-align: center;
}
</style>
</head>
<body>
     <div><h1>ADMIN LOGIN</h1>
      <form action="AdminPage" method="post" >
       Username: <input type="text" name="admin_name" placeholder="your name">
       Password: <input type="pwd" name="password" placeholder="password">
       <input type="submit" value="submit">
      </form>
     </div>
</body>
</html>