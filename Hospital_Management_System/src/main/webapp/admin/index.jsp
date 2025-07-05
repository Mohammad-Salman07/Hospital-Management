<%@page import="com.Db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <%@include file="/components/allCss.jsp"%>
  <style>
    body {
      background-image: url('https://images.unsplash.com/photo-1588776814546-ec7d1f5f1f0c');
      background-size: cover;
      background-attachment: fixed;
      background-repeat: no-repeat;
      background-position: center;
    }

    .overlay {
      background-color: rgba(255, 255, 255, 0.9);
      min-height: 100vh;
      padding: 30px;
    }

    .paint-card {
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
      border-radius: 12px;
      background-color: #fff;
      transition: transform 0.3s;
    }

    .paint-card:hover {
      transform: translateY(-5px);
    }

    .modal-content {
      border-radius: 12px;
    }
  </style>
</head>
<body>

<%@ include file="navbar.jsp"%>

<c:if test="${empty adminObj}">
  <c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>

<div class="overlay">
  <div class="container">
    <p class="text-center fs-2 fw-bold text-success mb-4">Admin Dashboard</p>

    <c:if test="${not empty errorMsg}">
      <p class="fs-4 text-center text-danger">${errorMsg}</p>
      <c:remove var="errorMsg" scope="session" />
    </c:if>

    <c:if test="${not empty sucMsg}">
      <div class="fs-4 text-center text-success" role="alert">${sucMsg}</div>
      <c:remove var="sucMsg" scope="session" />
    </c:if>

    <% DoctorDao dao = new DoctorDao(DBConnect.getconn()); %>

    <div class="row g-4">
      <div class="col-md-4">
        <div class="card paint-card text-center p-4">
          <i class="fas fa-user-md fa-3x text-success"></i>
          <p class="fs-4 mt-3">Doctor<br><strong><%=dao.countDoctor() %></strong></p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card paint-card text-center p-4">
          <i class="fa-solid fa-calendar fa-3x text-primary"></i>
          <p class="fs-4 mt-3">Total Appointments<br><strong><%=dao.countAppointment() %></strong></p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card paint-card text-center p-4" data-bs-toggle="modal" data-bs-target="#exampleModal">
          <i class="fas fa-user-md fa-3x text-warning"></i>
          <p class="fs-4 mt-3">Add Specialist +<br><strong><%=dao.countSpecialist() %></strong></p>
        </div>
      </div>

      <div class="col-md-4 mx-auto mt-4">
        <div class="card paint-card text-center p-4">
          <i class="fa-solid fa-user-tie fa-3x text-danger"></i>
          <p class="fs-4 mt-3">Total Users<br><strong><%=dao.countUser() %></strong></p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title" id="exampleModalLabel">Add Specialist</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../addSpecialist" method="post">
          <div class="form-group mb-3">
            <label class="form-label">Enter Specialist Name</label>
            <input type="text" name="specName" class="form-control form-control-lg" placeholder="e.g. Cardiologist" required>
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-success w-100">Add Specialist</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>
