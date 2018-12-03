<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" />

<script type="text/javascript" src="/webjars/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"/></script>
<script type="text/javascript" src="/webjars/jquery/3.1.1/jquery.min.js"/></script>
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
    <h1>Add Contact</h1>
    	<form name='f' action="addContact" method='POST'>
    	    <table class="table table-sm table-borderless">
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
            				<td>
            				    <div class='input-group date' id='datetimepicker1'>
            				    <input type="text" name="birthDate" class="form-control"/>
            				    <span class="input-group-addon">
            				    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                </div>
            				</td>
            			</tr>
            			<tr>
            			    <td>Social Profile:</td>
            			    <td><input type="text" name="socialProfile"/></td>
                        </tr>


            			<tr>
            				<td><input name="submit" class="btn btn-primary" type="submit" value="Save Contact" /></td>
            			</tr>
            		</table>
    	</form>
</div>
</div>
</div>
${contactId}


<a href="getAllContacts">Fetch Contacts</a>
</body>
</html>