<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Business Project List</title>
</head>
<body>

	<nav style="color:white; padding: 15px;" class="navbar mb-0 h5 navbar-dark bg-dark">
	<ul class="nav navbar-nav">
		<li>List Goes Here! ${date}</li>
	</ul>
	<ul class="nav navbar-right">
		<li><span id="time"></span></li>
		<li> | </li>
		<li><a href="/logout">Logout</a></li>
	</ul>
	</nav>
	
	<div class="container" class="p-3 mb-2 bg-light text-dark">
		<strong><i>PROJECT LIST</i></strong>
			<table class="table table-striped">

				<thead class="thead-dark">
					<tr>
						<th>Project Leader</th>
						<th>Investor</th>
						<th>Job Description</th>
						<th>Start Date</th>
						<th>Finish Date</th>
						<th></th>
						<th></th>
						<th>Progress</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="project" items="${schedule}">
						<tr>
							<td>${project.managerName}</td>
							<td>${project.employee}</td>
							<td>${project.desc}</td>
							<td>${project.startDate}</td>
							<td>${project.finishDate}</td>
							<td><a class="btn btn-outline-info btn-sm" href="/update-list?id=${project.id}">Update</a></td>
							<td><a class="btn btn-outline-danger btn-sm" href="/delete-schedule?id=${project.id}">Delete</a></td>
							<td style="vertical-align: middle">
							<div class="progress"><span class="progress-bar bg-info" role="progressbar" style="width: ${project.status}%" 
							aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></span></div>
							</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		<a href="/add-schedule" class="btn btn-outline-dark">Add</a>
	</div>
	

	<script>
	function checkTime(i) {
		  if (i < 10) {
		    i = "0" + i;
		  }
		  return i;
		}

		function startTime() {
		  var today = new Date();
		  var h = today.getHours();
		  var m = today.getMinutes();
		  var s = today.getSeconds();
		  // add a zero in front of numbers<10
		  m = checkTime(m);
		  s = checkTime(s);
		  document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
		  t = setTimeout(function() {
		    startTime()
		  }, 500);
		}
		startTime();
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	
</body>
</html>