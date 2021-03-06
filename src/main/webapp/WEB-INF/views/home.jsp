<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Management Screen</title>

<script src="resources/js/jquery-1.9.1.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">Employee Tracking System</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left">
                  	<li class="active">
						<li><a href="${pageContext.request.contextPath}/newEmployee">Add Employee</a>
					</li>
                </ul>
            </div>
        </div>
    </nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div>
						<div align="center">
							<legend>Employee List</legend>
						</div>
						<div class="table-responsive">
							<table id="example" class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>Name</th>
										<th>Surname</th>
										<th>Employee No</th>
										<th>Anual Leave Day</th>
										<th>Email</th>
										<th>Address</th>
										<th>Telephone</th>
										<th>Detail</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="employee" items="${listEmployee}">
										<tr>
											<td><c:out value="${employee.name}" /></td>
											<td><c:out value="${employee.surname}" /></td>
											<td><c:out value="${employee.employeeNo}" /></td>
											<td><c:out value="${employee.anualLeaveDay}" /></td>


											<td><c:out value="${employee.e_mail}" /></td>
											<td><c:out value="${employee.address}" /></td>
											<td><c:out value="${employee.phone}" /></td>
		
											<td><a class="btn btn-info"
												href="${pageContext.request.contextPath}/employeeDetail?id=${employee.id}">Detail</a>
											</td>
	
											<td><a class="btn btn-info"
												href="${pageContext.request.contextPath}/editEmployee?id=${employee.id}">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-danger"
												href="${pageContext.request.contextPath}/deleteEmployee?id=${employee.id}">Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>