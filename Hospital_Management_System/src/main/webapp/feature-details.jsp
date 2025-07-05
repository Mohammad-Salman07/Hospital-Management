<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Feature Details - Hospital Management System</title>
  <%@ include file="components/allCss.jsp" %>
  <style>
    body {
      background-color: #f8fbff;
      font-family: 'Segoe UI', sans-serif;
    }
    .section {
      padding: 60px 0;
    }
    .section h3 {
      color: #007bff;
    }
    .section p {
      font-size: 1.1rem;
      line-height: 1.6;
    }
    .feature-img {
      max-height: 300px;
      object-fit: cover;
      border-radius: 10px;
    }
    .section:nth-child(even) {
      background-color: #eef7ff;
    }
    .scroll-top {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #007bff;
      color: white;
      border-radius: 50%;
      width: 45px;
      height: 45px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      box-shadow: 0 2px 10px rgba(0,0,0,0.2);
      font-size: 20px;
    }
    .testimonial {
      background-color: #fff;
      border-left: 5px solid #007bff;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      margin-bottom: 30px;
      border-radius: 8px;
      animation: fadeInUp 1s ease-in-out;
    }
    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>
</head>
<body>

<%@ include file="components/navBar.jsp" %>

<div class="container">
  <h2 class="text-center mt-4 text-primary fw-bold">Hospital Features in Detail</h2>

  <div class="section" id="safety">
    <div class="row align-items-center">
      <div class="col-md-6">
        <h3>100% Safety</h3>
        <p>Our hospital implements the highest safety standards through digital monitoring systems, AI-supported alert mechanisms, and emergency protocols. Patient health and staff safety are continuously prioritized through real-time data monitoring and predictive risk assessments.</p>
        <p>Each department is audited regularly by internal and external agencies to maintain compliance with global healthcare norms.</p>
      </div>
      <div class="col-md-6">
        <img src="https://images.unsplash.com/photo-1588776814546-ec7d1f5f1f0c" class="img-fluid feature-img" alt="Safety">
      </div>
    </div>
  </div>

  <div class="section" id="clean">
    <div class="row align-items-center">
      <div class="col-md-6 order-md-2">
        <h3>Clean Environment</h3>
        <p>We strictly follow WHO-recommended sanitization protocols. Our housekeeping team is trained and equipped with modern tools to maintain a spotless, germ-free environment round the clock.</p>
        <p>Special attention is given to ICUs, operation theaters, and diagnostic labs where sanitation is most critical.</p>
      </div>
      <div class="col-md-6 order-md-1">
        <img src="https://images.unsplash.com/photo-1588776814206-5f8d50a4212b" class="img-fluid feature-img" alt="Clean Environment">
      </div>
    </div>
  </div>

  <div class="section" id="research">
    <div class="row align-items-center">
      <div class="col-md-6">
        <h3>Medical Research</h3>
        <p>We invest heavily in clinical trials, genetic studies, and collaborative research. Our dedicated R&D team collaborates with global institutions to bring the most advanced treatments to our patients.</p>
        <p>Our hospital is among the few in the region that contributes to peer-reviewed medical publications regularly and holds over 30 patents in drug development and surgical procedures.</p>
      </div>
      <div class="col-md-6">
        <img src="https://images.unsplash.com/photo-1607746882042-944635dfe10e" class="img-fluid feature-img" alt="Research">
      </div>
    </div>
  </div>

  <div class="section" id="doctors">
    <div class="row align-items-center">
      <div class="col-md-6 order-md-2">
        <h3>Friendly Doctors</h3>
        <p>Our medical staff undergo rigorous training not only in their respective specialties but also in patient empathy and communication. We believe healing begins with trust, so our doctors take time to understand and connect with each individual patient.</p>
        <p>We conduct regular patient-feedback sessions to enhance and improve our doctor-patient interactions.</p>
      </div>
      <div class="col-md-6 order-md-1">
        <img src="https://images.unsplash.com/photo-1550831107-1553da8c8464" class="img-fluid feature-img" alt="Doctors">
      </div>
    </div>
  </div>

  <div class="section">
    <h2 class="text-center text-success fw-bold mb-4">What Our Patients Say</h2>
    <div class="testimonial">
      <p><strong>Rita Mehra:</strong> "The doctors and nurses here treat you like family. I felt safe, heard, and cared for every moment. Truly a top-tier hospital experience!"</p>
    </div>
    <div class="testimonial">
      <p><strong>Arjun Saini:</strong> "Hygiene was top-notch. The staff were very courteous, and my treatment was handled professionally from start to finish."</p>
    </div>
    <div class="testimonial">
      <p><strong>Fatima Khan:</strong> "What impressed me most was the doctor’s attention to detail and their kind attitude. Highly recommended for family healthcare."</p>
    </div>
  </div>
</div>

<a href="#" class="scroll-top" title="Back to Top">&#8679;</a>

<%@ include file="components/footer.jsp" %>

<script>
  document.querySelector('.scroll-top').addEventListener('click', function (e) {
    e.preventDefault();
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });
</script>

</body>
</html>