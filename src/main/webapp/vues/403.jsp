<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Access Denied - ProgrammingFree</title>
</head>
<body>
<h1>You do not have permission to access this page!
</h1>
<div>
<form action="/logout" method="post">
          <input type="submit" value="Sign in as different user" /> 
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form> 

<form action="logout">
 <button type="submit" class="btn btn-primary">logout</button>  
 </form>
 </div>
</body>
</html>