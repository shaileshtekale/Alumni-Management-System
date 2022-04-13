<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<br>
<div class="container"> 
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item linkSize"><i class="fas fa-tachometer-alt"></i> <a class="link-dark" href="<c:url value="/welcome"/>">Home</a></li>
    <li class="breadcrumb-item linkSize active" aria-current="page"> <i class="fa fa-arrow-right" aria-hidden="true"></i>User Registration</li>
  </ol>
</nav>
</div>
<hr>
<div class="container"> 
	<sf:form method="post"
		action="${pageContext.request.contextPath}/alumni/al-signUp"
		modelAttribute="form">
		<div class="card">
			<h5 class="card-header bgcolor"
				style="color: white;">User
				Registration</h5>
			<div class="card-body">
				<b><%@ include file="businessMessage.jsp"%></b>

				<div class="col-md-6">
					<s:bind path="name">
						<label for="inputEmail4" class="form-label">Name</label>
						<sf:input path="${status.expression}"
							placeholder="Enter First Name" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="email">
						<label for="inputEmail4" class="form-label">Email</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Email" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="contactNo">
						<label for="inputEmail4" class="form-label">Contact No</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Contact No" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="dob">
						<label for="inputEmail4" class="form-label">Date of Birth</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Date Of Birth" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="gender">
						<label for="inputEmail4" class="form-label">Gender</label>
						<sf:select class="form-control" path="${status.expression}">
									<sf:option value="" label="Select" />
									<sf:options   items="${gender}" />
								</sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="courseName">
						<label for="inputEmail4" class="form-label">Course Name</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Course Name" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="occupation">
						<label for="inputEmail4" class="form-label">Occupation</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Occupation" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="address">
						<label for="inputEmail4" class="form-label">Address</label>
						<sf:textarea path="${status.expression}" rows="4" cols="4"
							placeholder="Enter Address" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="region">
						<label for="inputEmail4" class="form-label">Region</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Region" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="message">
						<label for="inputEmail4" class="form-label">Message</label>
						<sf:textarea path="${status.expression}" rows="4" cols="4"
							placeholder="Enter Message" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
			
				<div class="col-md-6">
					<s:bind path="password">
						<label for="inputEmail4" class="form-label">Password</label>
						<sf:input type="password" path="${status.expression}"
							placeholder="Enter Password" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="confirmPassword">
						<label for="inputEmail4" class="form-label">Confirm
							Password</label>
						<sf:input type="password" path="${status.expression}"
							placeholder="Enter Confirm Password" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<br>
				<div class="col-12">
					<input type="submit" name="operation"
						class="btn btn-primary pull-right" value="Save"> or <input
						type="submit" name="operation" class="btn btn-primary pull-right"
						value="Reset">
				</div>
			</div>
		</div>
	</sf:form>
</div>