<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" />
</head>

<body>
<div class="container-fluid">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
    <h1>Update Contact</h1>
    	<form name='f' action="updateContact" method='POST'>
           <div class="form-group">
    		<table class="table table-sm table-bordered">
    			<tr>
    			    <td>Id:</td>
                    <td><input type="text" name="id" value="${contact.id}" readonly/></td>

    				<td>First Name:</td>
    				<td><input type="text" name="firstName" value="${contact.firstName}"/></td>

    				<td>Last Name:</td>
    				<td><input type="text" name="lastName" value="${contact.lastName}" /></td>

    				<td>Email:</td>
    				<td><input type="email" class="form-control" name="email" value="${contact.email}" /></td>
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
    			    <td>Social Profile:</td>
    			    <td><input type="text" name="socialProfile" value="${contact.socialProfile}"/></td>
                </tr>

    			<tr>
    				<td><input class="btn btn-primary" name="submit" type="submit" value="Update" /></td>
    			</tr>
    		</table>
        </div>
    </form>

</div>
</div>
</div>

${contactId}


<a href="getAllContacts">Fetch Contacts</a>
</body>
</html>