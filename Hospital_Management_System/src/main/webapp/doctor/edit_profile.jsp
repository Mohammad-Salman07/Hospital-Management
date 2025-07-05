<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/components/allCss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<c:if test="${empty docObj}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	
	
	    <div class="container p-4">
        <div class="row">
            <div class="col-md-4">
                <div class="card paint-card">
                    <p class="text-center fs-3">Change Password</p>
                    <div class="card-body">

                        <!-- Show success or error message -->
                        <c:if test="${not empty sucMsg}">
                            <div class="alert alert-success">${sucMsg}</div>
                            <c:remove var="sucMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty errorMsg}">
                            <div class="alert alert-danger">${errorMsg}</div>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>

                        <form action="../docChangePassword" method="post">
                            <!-- Hidden userId field -->
                            <input type="hidden" name="userId" value="${docObj.id}" />

                            <div class="mb-3">
                                <label>Enter Old Password</label>
                                <input type="password" name="oldPassword" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label>Enter New Password</label>
                                <input type="password" name="newPassword" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-success col-md-12">
                                Change Password
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            
            <div class="col-md-5 offset-md-2">
            <div class="card paint-card">
            <p class="text-center fs-3">Edit Profile</p>
                <div class="card-body">
                
                           <!-- Show success or error message -->
                        <c:if test="${not empty sucMsgd}">
                            <div class="alert alert-success">${sucMsgd}</div>
                            <c:remove var="sucMsgd" scope="session" />
                        </c:if>

                        <c:if test="${not empty errorMsgd}">
                            <div class="alert alert-danger">${errorMsgd}</div>
                            <c:remove var="errorMsgd" scope="session" />
                        </c:if>
                
                
                <form action="../doctorUpdateProfile" method="post">
							<div class="mb-3">
								<label class="form-LabeL">Full Name</label> <input type="text"
									required name="fullname" class="form-control" value="${docObj.fullname }">
							</div>

							<div class="mb-3">
								<label class="form-Label">D0B</label> <input type="date"
									required name="dob" class="form-control" value="${docObj.dob}">
							</div>

							<div class="mb-3">
								<label class="form-Label">Qualification</label> <input required
									name="qualification" type="text" class="form-control" value="${docObj.qualification }">
							</div>

							<div class="mb-3">
								<label class="form-Label">Specialist</label> <select name="spec"
									required class="form-control" >
									<option>${docObj.specialist}</option>
									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getconn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option>
										<%=s.getSpecialistName()%>
									</option>
									<%
									}
									%>

								</select>
							</div>
							<div class="mb-3">
								<label class="form-Label">Email</label> <input type="text" readonly
									required name="email" class="form-control" value="${docObj.email }">
							</div>

							<div class="mb-3">
								<label class="form-Label">Mob No</label> <input type="text"
									required name="mobno" class="form-control" value="${docObj.mobno }">
							</div>

							<input type="hidden" name="id" value="${docObj.id}" />
							
							
							<button type="submit" class="btn btn-primary">Update</button>
						</form>
                
                </div>
            </div>
            </div>
            
        </div>
    </div>

</body>
</html>