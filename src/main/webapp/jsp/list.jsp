<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo List</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<style>
body
{
padding-top:60px;
}
.border {
	border-style: hidden !important;
	font-size: 12px;
}
tr
{

}
.align
{
text-align:center;
}
</style>

</head>
<body>
<div class="container">
 <div>
  <a type="button" class="btn btn-primary btn-md" href="todo">Add Todo</a>
  <a type="button" class="btn btn-primary btn-md" href="calender">Calender View</a>
 </div>
 <br>
 <div class="panel panel-primary">
  <div class="panel-heading">
   <h3>List of TODO's</h3>
  </div>
  <div class="panel-body">
   <table class="table table-striped">
    <thead>
     <tr>
      <th width="8%">Id</th>
      <th width="10%">Title</th>
      <th width="10%">Person To Meet</th>
      <th width="10%">Target Date</th>
      <th width="10%">Purpose</th>
      <th width="10%">Location</th>
      <th width="10%">Created start</th>
     
      <th width="10%"></th>
     </tr>
    </thead>
    <tbody>
     <c:forEach items="${todo}" var="todo">
      <tr>
      <td>${todo.id}</td>
       <td>${todo.title}</td>
       <td>${todo.whomtomeet}</td>
       <td>${todo.start}</td>
         <td>${todo.purpose}</td>
         <td>${todo.location}</td>
         <td>${todo.createddate}</td>
       <td><a type="button" class="btn btn-success border"
        href="edit/${todo.id}/?title=${todo.title}">Update</a>
       <a type="button" class="btn btn-warning border"
        href="delete/${todo.id}">Delete</a>
        </td>
      </tr>
     </c:forEach>
    </tbody>
   </table>
  </div>
 </div>

</div>
<div class="align"><a class="btn btn-primary" href="home.jsp">Back</a></div>
</body>
</html>