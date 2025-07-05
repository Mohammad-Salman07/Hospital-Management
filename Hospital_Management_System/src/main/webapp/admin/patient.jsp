<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Details</title>
    <%@include file="/components/allCss.jsp"%>
    <style>
        .paint-card {
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp"%>

    <div class="col-md-12">
        <div class="card paint-card">
            <div class="card-body">
                <p class="fs-3 text-center">Patient Details</p>

                <c:if test="${not empty errorMsg}">
                    <p class="fs-4 text-center text-danger">${errorMsg}</p>
                    <c:remove var="errorMsg" scope="session" />
                </c:if>

                <c:if test="${not empty sucMsg}">
                    <p class="fs-4 text-center text-success">${sucMsg}</p>
                    <c:remove var="sucMsg" scope="session" />
                </c:if>

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Full Name</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Age</th>
                            <th scope="col">Appointment Date</th>
                            <th scope="col">Email</th>
                            <th scope="col">Mobile No</th>
                            <th scope="col">Diseases</th>
                            <th scope="col">Doctor Name</th>
                            <th scope="col">Address</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            AppointmentDAO dao = new AppointmentDAO(DBConnect.getconn());
                            DoctorDao dao2 = new DoctorDao(DBConnect.getconn());
                            List<Appointment> list = dao.getAllAppointment();
                            for (Appointment ap : list) {
                                Doctor d = dao2.getDoctorById(ap.getDoctorId());
                        %>
                        <tr>
                            <td><%= ap.getFullname() %></td>
                            <td><%= ap.getGender() %></td>
                            <td><%= ap.getAge() %></td>
                            <td><%= ap.getApoinDate() %></td>
                            <td><%= ap.getEmail() %></td>
                            <td><%= ap.getPhNo() %></td>
                            <td><%= ap.getDiseases() %></td>
                            <td><%= d != null ? d.getFullname() : "N/A" %></td>
                            <td><%= ap.getAddress() %></td>
                            <td><%= ap.getStatus() %></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
