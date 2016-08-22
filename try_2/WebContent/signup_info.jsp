<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
html { height: 100% }
::-moz-selection { background: #fe57a1; color: #fff; text-shadow: none; }
::selection { background: #fe57a1; color: #fff; text-shadow: none; }
body { 
  background: #ef3d47;
 
  border-radius: 6px;
}
</style>
</head>
<body>
<h3>Enter Details to continue</h3>
<form action="signup" method="post">
<table>
<tr>
<td>Customer Name:</td>
<td><input type="text" name="customer_name"/></td>
</tr>
<tr>
<td>Customer ID:</td>
<td><input type="text" name="customer_id"
value="12"/></td>
</tr>
<tr>
<td>Enter username:</td>
<td><input type="text" name="user_name"/></td>
</tr>
<tr>
<td>Enter password again:</td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td>Phone number:</td>
<td><input type="text" name="phno"/></td>
</tr>
<tr>
<td>Address:</td>
<td><input type="text" name="address"/></td>
</tr>
<tr>
<td>FIOS(yes/no)</td>
<td><input type="text" name="fios"/></td>
</tr>
<tr>
<td>DSL(yes/no)</td>
<td><input type="text" name="dsl"/></td>
</tr>
<tr>
<td>home_phone(yes/no)</td>
<td><input type="text" name="phone"/></td>
</tr>
<tr>
<td>Mobile(yes/no)</td>
<td><input type="text" name="mobile"/></td>
</tr>
</table>
<input type="submit" value="submit">
</form>
</body>
</html>