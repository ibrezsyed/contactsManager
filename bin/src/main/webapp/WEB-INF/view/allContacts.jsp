<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" />
</head>

<body>
<div class="container-fluid">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
    <h1>All Contacts</h1>

    	<table class="table table-sm table-striped table-bordered">
    	<thead class="thead-dark">
    	<tr>
    	    <th>Id</th>
    	    <th>First Name</th>
    	    <th>Last Name</th>
    	    <th>Email</th>
    	    <th>Phone Number</th>
    	    <th>Address</th>
    	    <th>BirthDate</th>
    	    <th>Social Profile</th>
    	</tr>
        </thead>

        <tbody>
        <c:forEach items="${allContacts}" var="contact" >
        <tr>
            <td>${contact.id}</td>
            <td>${contact.firstName}</td>
            <td>${contact.lastName}</td>
            <td>${contact.email}</td>
            <td>${contact.phoneNumber}</td>
            <td>${contact.address}</td>
            <td>${contact.birthDate}</td>
            <td>${contact.socialProfile}</td>

            <td><a class="btn btn-primary" href="editContact?id=${contact.id}">Edit</a></td>
            <td><a class="btn btn-primary" href="deleteContact?id=${contact.id}">DELETE</a></td>
        </tr>
        </c:forEach>
        </tbody>
    	</table>

</div>
</div>
</div>
</body>
</html>