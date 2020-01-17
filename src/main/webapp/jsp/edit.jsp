<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<style>
.footer {
 position: fixed;
 left: 0;
 bottom: 0;
 width: 100%;
 background-color: black;
 color: white;
 height: 100px;
 text-align: center;
}
body
{
padding-top:50px;

}
.align
{
text-align:center;
}
</style>

<title>Todo</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
 <div class="row">
  <div class="col-md-6 col-md-offset-3 ">
   <div class="panel panel-primary">
    <div class="panel-heading">Update TODO</div>
    <div class="panel-body">
     <form:form method="post" action="update" modelAttribute="todo">
      <form:hidden path="id" />
      <fieldset class="form-group">
       <form:label path="title">Title</form:label>
       <form:input path="title" type="text" class="form-control" value="${todo.title}" />
       <form:errors path="title" cssClass="text-warning" />
      </fieldset>
<fieldset class="form-group">
       <form:label path="whomtomeet">Person To Meet</form:label>
       <form:input path="whomtomeet" type="text" class="form-control"
         />
       <form:errors path="whomtomeet" cssClass="text-warning" />
      </fieldset>
      <fieldset class="form-group">
       <form:label path="start">Target Date</form:label>
       <form:input path="start" type="date" class="form-control"
      />
       <form:errors path="start" cssClass="text-warning" />
      </fieldset>
 <fieldset class="form-group">
       <form:label path="purpose">Purpose</form:label>
       <form:textarea path="purpose" type="text" class="form-control"
         />
       <form:errors path="purpose" cssClass="text-warning" />
      </fieldset>
      <fieldset class="form-group">
       <form:label path="location">Location</form:label>
       <form:input path="location" type="text" class="form-control"
        />
       <form:errors path="purpose" cssClass="text-warning" />
      </fieldset>
      <button type="submit" class="btn btn-success">Update</button>
     </form:form>
    </div>
   </div>
  </div>
 </div>
</div>
<div class="align"><a class="btn btn-primary" href="list">Back</a></div>
</body>
</html>