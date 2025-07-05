<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<%@include file="components/allCss.jsp"%>
<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

    <c:if test="${empty userObj}">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>

    <%@ include file="components/navBar.jsp"%>
    
    

    <div class="container p-4">
        <div class="row">
            <div class="col-md-4 offset-md-4">
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
                        <!-- End -->

                        <form action="changePassword" method="post">
                            <!-- Hidden userId field -->
                            <input type="hidden" name="userId" value="${userObj.id}" />

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
        </div>
    </div>
</body>
</html>
