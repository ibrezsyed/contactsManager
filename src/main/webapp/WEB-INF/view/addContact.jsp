<html>
<head></head>

<body>
	<h1>Add Contact</h1>
	<form name='f' action="addContact" method='POST'>

		<table>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstName"/></td>

				<td>Last Name:</td>
				<td><input type="text" name="lastName"/></td>

				<td>Email:</td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input type="text" name="phoneNumber"/></td>

				<td>Address:</td>
				<td><input type="text" name="address"/></td>

				<td>BirthDate:</td>
				<td><input type="text" name="birthDate"/></td>
			</tr>
			<tr>
			    <td>Related Name: </td>
			    <td><input type="text" name="relatedName"/></td>

			    <td>Social Profile:</td>
			    <td><input type="text" name="socialProfile"/></td>

			    <td>Instant Message:</td>
			    <td><input type="text" name="instantMessage"/></td>
			</tr>
			<tr>
			    <td>Company:</td>
                <td><input type="text" name="company"/></td>
            </tr>


			<tr>
				<td><input name="submit" type="submit" value="Save Contact" /></td>
			</tr>
		</table>

</form>
${contactId}


<a href="getAllContacts">Fetch Contacts</a>
</body>
</html>