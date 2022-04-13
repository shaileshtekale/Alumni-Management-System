<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<br>
<div class="container">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item linkSize"><i
				class="fas fa-tachometer-alt"></i> <a class="link-dark"
				href="<c:url value="/welcome"/>">Home</a></li>
			<li class="breadcrumb-item linkSize active" aria-current="page">
				<i class="fa fa-arrow-right" aria-hidden="true"></i>Add Employee
			</li>
		</ol>
	</nav>
</div>
<hr>
<div class="container">
	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/employee"
		modelAttribute="form" enctype="multipart/form-data">
		<div class="card">
			<h5 class="card-header bgcolor" style="color: white;">Add
				Employee</h5>
			<div class="card-body">
				<b><%@ include file="businessMessage.jsp"%></b>

				<div class="col-md-8">
					<div class="row">
						<div class="col-6">
							<s:bind path="firstName">
								<label for="inputEmail4" class="form-label">First Name</label>
								<sf:input path="${status.expression}"
									placeholder="Enter First Name" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="col-6">
							<s:bind path="lastName">
								<label for="inputEmail4" class="form-label">Last Name</label>
								<sf:input path="${status.expression}"
									placeholder="Enter last Name" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

					</div>
				</div>

				<div class="col-md-8">
					<div class="row">
						<div class="col-6">
							<s:bind path="fatherName">
								<label for="inputEmail4" class="form-label">Father Name</label>
								<sf:input path="${status.expression}"
									placeholder="Enter Father Name" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="col-6">
							<s:bind path="emailId">
								<label for="inputEmail4" class="form-label">Email Id</label>
								<sf:input path="${status.expression}"
									placeholder="Enter Email Id " class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

					</div>
				</div>

				<div class="col-md-8">
					<div class="row">
						<div class="col-6">
							<s:bind path="mobielNo">
								<label for="inputEmail4" class="form-label">Mobile No</label>
								<sf:input path="${status.expression}"
									placeholder="Enter Mobile No" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="col-6">
							<s:bind path="dob">
								<label for="inputEmail4" class="form-label">Date Of
									Birth</label>
								<sf:input path="${status.expression}" id="datepicker" placeholder="Enter DOB"
									class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

					</div>
				</div>
				
					<div class="col-md-8">
					<div class="row">
						<div class="col-6">
							<s:bind path="roleId">
								<label for="inputEmail4" class="form-label">Company Profile</label>
							<sf:select  class="form-control"
								path="${status.expression}">
								<sf:option value="-1" label="Select" />
								<sf:options itemLabel="name" itemValue="id" items="${roleList}" />
							</sf:select>
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="col-6">
							<s:bind path="joiningDate">
								<label for="inputEmail4" class="form-label">Joining Date</label>
								<sf:input path="${status.expression}" id="datepicker1" placeholder="Enter Joining Date"
									class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

					</div>
				</div>
				
				<div class="col-md-8">
					<div class="row">
						<div class="col-6">
							<s:bind path="technology">
								<label for="inputEmail4" class="form-label">Technology</label>
								<sf:input path="${status.expression}"
									placeholder="Enter Technology" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="col-6">
							<s:bind path="exprience">
								<label for="inputEmail4" class="form-label">Experience</label>
								<sf:input path="${status.expression}" placeholder="Enter Experience"
									class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

					</div>
				</div>
				
				<div class="col-md-8">
					<div class="row">
						<div class="col-6">
							<s:bind path="qualification">
								<label for="inputEmail4" class="form-label">Qualification</label>
								<sf:textarea path="${status.expression}" rows="4" cols="4"
									placeholder="Enter Qualification" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="col-6">
							<s:bind path="address">
								<label for="inputEmail4" class="form-label">Address</label>
								<sf:textarea rows="4" cols="4" path="${status.expression}" placeholder="Enter Address"
									class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

					</div>
				</div>



				<div class="col-md-6">
					<s:bind path="profilePic">
						<label for="inputEmail4" class="form-label">Profile Pic</label>
						<sf:input type="file" path="${status.expression}"
							placeholder="Enter" class="form-control" required="required" />
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