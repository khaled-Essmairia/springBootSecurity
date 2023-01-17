<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Add material</title>
</head>
<body>

 <div class="container">
    <h1>Add material</h1>
    
    <br/>
    <form action="addMateriel">
  <div class="mb-3">
    <label for="titre" class="form-label">Title</label>
    <input type="text" name="titre" class="form-control" id="titre" required="required">
  </div>
  <div class="mb-3">
  <label for="type" class="form-label">type</label>
  <select required="required" name="type" class="form-select" id="type">
   <option value="info">réseau</option>
   <option value="civil">civil</option>
   <option value="mecanique">mecanique</option>
   <option value="chimique">chimique</option>
</select>
  </div>
<div class="mb-3">
    <label for="serie" class="form-label">serie</label>
    <input type="text" required="required" name="serie" class="form-control" id="serie" >
  </div>
  
  <div class="mb-3">
    <label for="qte" class="form-label">Amount</label>
    <input type="text" name="qte" required="required" class="form-control" id="qte">
  </div>
  
  <div class="mb-3">
    <label for="etat" class="form-label">status</label>
  
  <select class="form-select" id="etat" name="etat" required="required">
   <option value="true">functional</option>
   <option value="chimique">defective</option>
</select>
  </div>
  <div class="mb-3">
    <label for="departement" class="form-label">departement</label>
 <select class="form-select" id="deparement" name="dep" required="required">
   <c:forEach var="d" items="${listdep}">
   <option value="${d.id }">${d.titre}</option>
    
   </c:forEach>
</select>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 </div>
</body>
</html>