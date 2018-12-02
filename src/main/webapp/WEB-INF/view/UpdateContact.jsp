<html>
<head></head>

<body>
	<h1>Add Contact</h1>
	<form name='f' action="updateContact" method='POST'>

		<table>
			<tr>
			    <td>Id:</td>
                <td><input type="text" name="id" value="${contact.id}" readonly/></td>

				<td>First Name:</td>
				<td><input type="text" name="firstName" value="${contact.firstName}"/></td>

				<td>Last Name:</td>
				<td><input type="text" name="lastName" value="${contact.lastName}" /></td>

				<td>Email:</td>
				<td><input type="text" name="email" value="${contact.email}" /></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input type="text" name="phoneNumber" value="${contact.phoneNumber}"/></td>

				<td>Address:</td>
				<td><input type="text" name="address" value="${contact.address}"/></td>

				<td>BirthDate:</td>
				<td><input type="text" name="birthDate" value="${contact.birthDate}"/></td>
			</tr>
			<tr>
			    <td>Related Name: </td>
			    <td><input type="text" name="relatedName" value="${contact.relatedName}"/></td>

			    <td>Social Profile:</td>
			    <td><input type="text" name="socialProfile" value="${contact.socialProfile}"/></td>

			    <td>Instant Message:</td>
			    <td><input type="text" name="instantMessage" value="${contact.instantMessage}"/></td>
			</tr>
			<tr>
			    <td>Company:</td>
                <td><input type="text" name="company" value="${contact.company}"/></td>
            </tr>


			<tr>
				<td><input name="submit" type="submit" value="Update" /></td>
			</tr>
		</table>

</form>
${contactId}


<a href="getAllContacts">Fetch Contacts</a>
</body>
</html>