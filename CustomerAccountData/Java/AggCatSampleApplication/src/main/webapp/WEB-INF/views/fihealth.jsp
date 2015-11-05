
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Get Institution | Aggregation And Categorization</title>
</head>

<body>

	<div id="wrapper">

		<div id="header">

			<div class="topNavigation">

				<ul>
					<li>Welcome, <span class="username"><c:out value='${sessionScope["emailMapped"]}' /></span></li>
					<li><a href="signOut.htm" title="Sign Out">Sign Out</a></li>
				</ul>

			</div>

			<div class="primaryNavigation">
				<ul>
					<li><a href="#">Institutions</a></li>
					<li><a href="#">Account Details</a></li>
					<li><a href="#">Account Transactions</a></li>
					<li class="active"><a href="#">FI Health</a></li>
				</ul>
			</div>

		</div>

		<div id="body">
			<div class="filter">
			<table cellpadding="0" cellspacing="0" border="0">
				<tr>
				<form method="get" action="fihealthsingle.htm">
						
							<td>Institution Id: <input type="text" name="id"/></td>
							<td><input type="submit" class="button l1 next" value="Fetch" /></td>
							<!-- <td width="50%" align="right"><a href="scrollInstitutions.htm?ScrollDirection=Up" title="clear search">Clear Search</a></td> -->
						
				</form>
				
				<form method="get" action="fihealthtop20.htm">
						
							<!-- <td>Institution Id: <input type="text" name="id"/></td> -->
							<td width="50%" align="right"><input type="submit" class="button l1 next" value="Fetch Top 20 FI" /></td>
							<!-- <td width="50%" align="right"><a href="scrollInstitutions.htm?ScrollDirection=Up" title="clear search">Clear Search</a></td> -->
						
				</form>
				</tr>
				</table>
			</div>
			
			<% if(request.getAttribute("error") != null) { %>
				<div class="error"><%= request.getAttribute("error") %></div>
			<% } %>
			
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<thead>
					<tr>
						<th width="10%" align="center">Institution ID</th>
						<th width="30%" align="center">Institution Name</th>
						<th width="20%" >Status</th>
						<th width="20%" >Secondary Status</th>
						<th width="25%" >Last Refreshed Time Stamp</th>
						
					</tr>
				</thead>
				<c:forEach var="item" items='${fihealthinstitution}'>
					<tr>
						<c:forEach var="column" items='${item}'>
							<td  align="center"><c:out value="${column}"></c:out></td>
						</c:forEach>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
	<div id="footer">
		<div class="copyright">&copy; 2012 Aggregation And
			Categorization</div>
	</div>

</body>
</html>
