<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<section class="menu-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="navbar-collapse collapse ">
					<ul id="menu-top" class="nav navbar-nav navbar-right">
						<li><a href="dashboard.jsp">| Dashboard | </a></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">| Food Items &nbsp;<i class="fa fa-angle-down"></i> |</a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-add-food.jsp">Add Food Items</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-view-food.jsp">View Food Items</a></li>
								
							</ul></li>

						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">| Orders &nbsp;<i class="fa fa-angle-down"></i> |</a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-all-orders.jsp">View All Orders</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-pending-orders.jsp">View Pending Orders</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-delivered-orders.jsp">View Delivered Orders</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">| Customers &nbsp;<i class="fa fa-angle-down"></i> |</a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-view-customers.jsp">View Customers</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-view-contacts.jsp">View Contacts</a></li>
							</ul></li>
<li>              </li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown"><font color="#ded14e"><b>| <%=session.getAttribute("uname")%>&nbsp;<i
								class="fa fa-angle-down"></i></font> |</b></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-my-account.jsp">My Profile</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="admin-change-own-password.jsp">Change Password</a></li>
							
						<li>
				<a href="admin-logout.jsp" role="menuitem" tabindex="-1">Logout</a>
			</li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>