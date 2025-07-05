<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<style>
  .navbar {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  }

  .navbar-brand i {
    margin-right: 8px;
  }

  .nav-link {
    font-weight: 500;
    transition: all 0.3s ease;
  }

  .nav-link:hover {
    color: #ffc107 !important;
    transform: translateY(-2px);
  }

  .dropdown-menu {
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  }

  .dropdown-item:hover {
    background-color: #f1f1f1;
    color: #007bff;
  }

  .navbar-toggler {
    border: none;
  }

  .navbar-toggler:focus {
    outline: none;
    box-shadow: none;
  }
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand fs-4 fw-bold" href="index.jsp">
      <i class="fa-solid fa-hospital"></i> Medi Homes
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

        <!-- Not Logged In -->
        <c:if test="${empty userObj}">
          <li class="nav-item">
            <a class="nav-link active" href="admin_login.jsp">
              <i class="fa-solid fa-right-to-bracket me-1"></i> Admin
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="doctor_login.jsp">
              <i class="fa-solid fa-user-doctor me-1"></i> Doctor
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="user_appointment.jsp">
              <i class="fa-solid fa-calendar-check me-1"></i> Appointment
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="user_login.jsp">
              <i class="fa-solid fa-users me-1"></i> User
            </a>
          </li>
        </c:if>

        <!-- Logged In -->
        <c:if test="${not empty userObj}">
          <li class="nav-item">
            <a class="nav-link active" href="user_appointment.jsp">
              <i class="fa-solid fa-calendar-check me-1"></i> Appointment
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="view_appointment.jsp">
              <i class="fa-solid fa-eye me-1"></i> View Appointment
            </a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button"
              data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fa-solid fa-circle-user me-1"></i> ${userObj.fullname}
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="change_password.jsp"><i class="fa-solid fa-key me-1"></i> Change Password</a></li>
              <li><a class="dropdown-item" href="userLogout"><i class="fa-solid fa-right-from-bracket me-1"></i> Logout</a></li>
            </ul>
          </li>
        </c:if>

      </ul>
    </div>
  </div>
</nav>
