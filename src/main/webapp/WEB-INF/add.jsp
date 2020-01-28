 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style>label { margin: 15px 0 15px 0; } a:hover { color: #138496;}</style> 
<meta charset="ISO-8859-1">
<title>Add Schedule Plan</title>
</head>
<body>

	<nav class="navbar mb-0 h5 navbar-dark bg-dark">
		<a href="/list"  class="navbar-brand ">Go To Project List!</a>
	</nav>

	<div class="container" style="padding: 25px 15px">
		<form:form method="post" commandName="schedule">
			<form:hidden path="id"/>
			<fieldset class="form-group">
			<legend>Enter Project Info:</legend>
				<label>Manager Name:</label>
					<form:input class="form-control" path="managerName" type="text"/>
				<label>Employee:</label>
					<form:input class="form-control" path="employee" type="text"/>
				<label>Job Description:</label>
					<form:input class="form-control" path="desc" type="text" required="required"/>
					<form:errors path="desc" cssClass="text-warning"/>
				<label>Project Start Date:</label>
					<form:input class="form-control" path="startDate" placeholder="${time}" type="text"/>
				<label>Project Finish Date:</label>
					<form:input class="form-control" path="finishDate" type="text" placeholder="dd.MM.yyyy"/>
				<label>Project Progress</label>
					<form:input class="form-control" path="status" type="text"/>
					<form:errors path="status" cssClass="text-warning"/>
					<small id="emailHelp" class="form-text text-muted">Enter number between 0 - 100, that represents % of finished project</small>
			</fieldset>
				<input class="btn btn-info" type="submit" value="Add Project">
		</form:form>	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>