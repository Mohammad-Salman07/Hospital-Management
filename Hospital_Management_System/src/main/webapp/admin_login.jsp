<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
  <%@include file="components/allCss.jsp"%>
  <style>
    body {
      background: url('https://images.unsplash.com/photo-1588776814546-ec7d1f5f1f0c') no-repeat center center fixed;
      background-size: cover;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .overlay {
      background-color: rgba(255, 255, 255, 0.95);
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 40px;
    }

    .paint-card {
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
      border-radius: 12px;
      padding: 30px;
      background-color: #fff;
    }

    .form-label {
      font-weight: 600;
    }

    .btn-success {
      background-color: #28a745;
      border: none;
      font-weight: 600;
      transition: background 0.3s ease;
    }

    .btn-success:hover {
      background-color: #218838;
    }

    .form-control {
      border-radius: 8px;
    }
  </style>
</head>
<body>

<%@ include file="components/navBar.jsp"%>

<div class="overlay">
  <div class="col-md-4">
    <div class="card paint-card">
      <div class="card-body">
        <h4 class="text-center text-success mb-4">Admin Login</h4>

        <c:if test="${not empty sucMsg}">
          <p class="text-center text-success fs-5">${sucMsg}</p>
          <c:remove var="sucMsg" scope="session" />
        </c:if>

        <c:if test="${not empty errorMsg}">
          <p class="text-center text-danger fs-5">${errorMsg}</p>
          <c:remove var="errorMsg" scope="session" />
        </c:if>

        <form action="adminLogin" method="post">
          <div class="mb-3">
            <label class="form-label">Email address</label>
            <input required name="email" type="email" class="form-control" placeholder="admin@example.com">
          </div>

          <div class="mb-3">
            <label class="form-label">Password</label>
            <input required name="password" type="password" class="form-control" placeholder="Enter your password">
          </div>

          <div class="d-grid">
            <button type="submit" class="btn btn-success">Login</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<%@include file="components/footer.jsp"%>
</body>
</html>
