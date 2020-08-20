<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Edit user information</title>
</head>
<body>

	<form:form action="saveStudents" modelAttribute="student"
		method="POST">
		<table>
			<tbody>
				<tr>
					<td><label>Name: </label></td>
					<td><form:input path="name" />
				</tr>
				<tr>
					<td><label>Gender: </label></td>
					<td><form:input path="gender" />
				</tr>
				<tr>
					<td><label>Major </label></td>
					<td><form:input path="major" />
				</tr>
				<tr>
					<td><label>Birthday: </label></td>
					<td><form:input path="birthday" />
				</tr>
				<tr>
					<td><label>Credit: </label></td>
					<td><form:input path="credit" />
				</tr>
				<tr>
					<td><label>Remarks: </label></td>
					<td><form:input path="remarks" /></td>
				</tr>

				<tr>
					<c:url var="showFormForUpdate" value="/course/updateStudent">
						<c:param name="userId" value="${specificstudent.id}"></c:param>
					</c:url>
					
				</tr>
			</tbody>
		</table>


	</form:form>
</body>

</html>