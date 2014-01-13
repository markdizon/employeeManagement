<html>
<head>
<title></title>
</head>
<body>
<%
	WbdProductionHelper helper = null;
	JspHelper jh = null;
	String snippetVar_myProperty;
	String snippetVar_thisNavpoint;
%>
<!--START-->
<%@page import="tooltwist.wbd.WbdProductionHelper"%>
<%@page import="com.dinaa.data.XData"%>
<%@page import="tooltwist.employeeManagement.productionHelpers.EmployeeDetailsProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	EmployeeDetailsProductionHelper h = (EmployeeDetailsProductionHelper) helper;
	XData data = h.getData(jh);
%>

<!-- ********** INSERT HTML HERE ********** -->
<table class="employeeDetails">
	<tr>
		<td>Personal Information</td>
	</tr>
	<tr>
		<td>
			Username: <%= h.getUsername() %>
		</td>
	</tr>
	<tr>
		<td>
			Password: <%= h.getPassword() %>
		</td>
	</tr>
	<tr>
		<td>
			First Name: <%= h.getFirstName() %>
		</td>
	</tr>
	<tr>
		<td>
			Middle Name: <%= h.getMiddleName()  %>
		</td>
	</tr>
	<tr>
		<td>
			Last Name: <%= h.getLastName() %>
		</td>
	</tr>
</table>
<a href="employeeManagement-13?employeeId=<%= h.getEmployeeId() %>" class="btn btn-success">Update</a>
<!--END-->
</body>
</html>
