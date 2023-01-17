<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
 
  <div class="container-md" id="container" style="diplay : flex;justify-content: center;align-content: center;">
 <div  style="align-self: center;">
   <h1>department list</h1>
 </div>
   <br/>
   <div class="container">
    <table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">title</th>
      <th scope="col">=></th>
    </tr>
  </thead>
  <tbody>
     <c:forEach var="d" items="${listdep}">
          <tr>
      <th scope="row">1</th>
      <td>${d.titre}</td>
      <td><a href="listMat?iddep=${d.id }">list of materials</a></td>
    </tr>
     </c:forEach>
  
  </tbody>
</table>
</div>

  <form action="logout">
 <button type="submit" class="btn btn-primary">logout</button>
  </div>
  

  
</body>
</html>