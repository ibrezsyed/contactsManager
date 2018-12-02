<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head></head>

<body>
	<h1>All Contacts</h1>

	<table>
	<tr>
	    <th>First Name</th>
	    <th>Last Name</th>
	    <th>Email:</th>
	    <th>Phone Number:</th>
	    <th>Address</th>
	    <th>BirthDate</th>
	    <th>Related Name</th>
	    <th>Social Profile</th>
	    <th>Instant Message</th>
	    <th>Company</th>
	</tr>

    <c:forEach items="${allContacts}" var="contact" >
    <tr>
        <td>${contact.firstName}</td>
        <td>${contact.lastName}</td>
        <td>${contact.email}</td>
        <td>${contact.phoneNumber}</td>
        <td>${contact.address}</td>
        <td>${contact.birthDate}</td>
        <td>${contact.relatedName}</td>
        <td>${contact.socialProfile}</td>
        <td>${contact.instantMessage}</td>
        <td>${contact.company}</td>
    </tr>
    </c:forEach>
	</table>
</body>
</html>