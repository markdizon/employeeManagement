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
<%@page import="tooltwist.employeeManagement.productionHelpers.AddEmployeeProductionHelper"%>
<%@page import="tooltwist.employeeManagement.requestHandlers.EmployeeRequestHandler"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	AddEmployeeProductionHelper h = (AddEmployeeProductionHelper) helper;
	XData data = h.getData(jh);
%>

<!-- ********** INSERT HTML HERE ********** -->
<form class="form-horizontal" method="post">
	<input type="hidden" value="<%= h.getEmployeeId() %>" name="employeeId" />
	<input type="hidden" value="employeeManagement_widgets.addEmployee.employee" name="op" />
	<fieldset>

		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="username">Username:</label>
		  <div class="controls">
		    <input id="username" value="<%= h.getUsername() %>" name="username" type="text" placeholder="Username" class="input-large" required="">
		    
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="password">Password:</label>
		  <div class="controls">
		    <input id="password" value="<%= h.getPassword() %>" name="password" type="text" placeholder="Password" class="input-large" required="">
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="firstName">First Name:</label>
		  <div class="controls">
		    <input id="firstName" value="<%= h.getFirstName() %>" name="firstName" type="text" placeholder="First Name" class="input-large" required="">
		    
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="middleName">Middle Name</label>
		  <div class="controls">
		    <input id="middleName" value="<%= h.getMiddleName() %>" name="middleName" type="text" placeholder="Middle Name" class="input-large">
		    
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="lastName">Last Name</label>
		  <div class="controls">
		    <input id="lastName" value="<%= h.getLastName() %>" name="lastName" type="text" placeholder="Last Name" class="input-large" required="">
		    
		  </div>
		</div>
		
		<!-- Button -->
		<div class="control-group">
		  <label class="control-label" for="save"></label>
		  <div class="controls">
		    <button id="save" type="submit" name="save" class="btn btn-primary">Save</button>
		  </div>
		</div>
	
	</fieldset>
</form>
<!--END-->
</body>
</html>