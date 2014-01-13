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
<%@page import="com.dinaa.data.XNodes"%>
<%@page import="tooltwist.wbd.WbdProductionHelper"%>
<%@page import="com.dinaa.data.XData"%>
<%@page import="tooltwist.employeeManagement.productionHelpers.UserListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	UserListProductionHelper h = (UserListProductionHelper) helper;
	XData data = h.getData(jh);
			XNodes nodes = data.getNodes("/select/employee");
%>

<!-- ********** INSERT HTML HERE ********** -->
<a href="employeeManagement-13" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add Employee</a>

<table class="userList">
	<tr>
		<td>Username	</td>
		<td>Password</td>
		<td>First Name</td>
		<td>Middle Name</td>
		<td>Last Name</td>
		<td>Action</td>
	</tr>
	<% for (nodes.first(); nodes.next();) { %>
	<tr>
		<td><%= nodes.getText("username") %></td>
		<td><%= nodes.getText("password") %></td>
		<td><%= nodes.getText("firstName") %></td>
		<td><%= nodes.getText("middleName") %></td>
		<td><%= nodes.getText("lastName") %></td>
		<td><a href="%%targetPage%%?employeeId=<%= nodes.getText("employeeId") %>">View</a></td>
	</tr>
	<% } %>
</table>
<!--END-->
</body>
</html>