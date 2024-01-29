<%-- 
    Document   : ajout_quantite_activite
    Created on : Dec 19, 2023, 3:17:59 PM
    Author     : Family
--%>

<%@page import="modele.Bouquet"%>
<%
    Bouquet bouquets = (Bouquet) request.getAttribute("bouquet");
    out.print(bouquets.getId());
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Forms / Elements - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
    <%@include file="header.jsp" %>
    
  <main id="main" class="main">

      
    <div class="pagetitle">
      <h1>Formulaire</h1>
    </div><!-- End Page Title -->

    <section class="section">
        <form action="InsertActiviteVoyage" method="get">
            <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Ajout quantite</h5>

              <!-- General Form Elements -->
                  <input type="hidden" name="bouquet" value="<%= bouquets.getId() %>">
                  <input type="hidden" name="voyage" value="<%= request.getAttribute("voyage") %>">
                <div class="row mb-3">
                  <% for(int i=0 ; i<bouquets.getActivite().size() ; i++){%>
                  <div class="col-sm-10">
                      <label for="inputText" class="col-sm-2 col-form-label"> <%= bouquets.getActivite().get(i).getActivite() %> </label>
                        <input type="text" class="form-control" name="<%= bouquets.getActivite().get(i).getActivite() %>">
                        <input type="hidden" name="id_<%= bouquets.getActivite().get(i).getActivite() %>" value="<%= bouquets.getActivite().get(i).getId() %>">
                        <label for="inputText" class="col-sm-2 col-form-label"> Duree </label>
                        <input type="number" name="duree_<%= bouquets.getActivite().get(i).getActivite() %>">

                  </div>
                  <% } %>
                </div>
                

                <div class="row mb-3">
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">OK</button>
                  </div>
                </div>


            </div>
          </div>

        </div>
      </div>
        </form>
    </section>

  </main><!-- End #main -->

  <%@include file="footer.jsp" %>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>