<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Users CRUD Workshop 2024</span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src=<c:url value="/vendor/jquery/jquery.js"/>></script>
<script src=<c:url value="/vendor/bootstrap/js/bootstrap.bundle.js"/>></script>

<!-- Core plugin JavaScript-->
<script src=<c:url value="/vendor/jquery-easing/jquery.easing.js"/>></script>

<!-- Custom scripts for all pages-->
<script src=<c:url value="/js/sb-admin-2.js"/>></script>

<!-- Page level plugins -->
<script src=<c:url value="/vendor/chart.js/Chart.js"/>></script>

<!-- Page level custom scripts -->
<script src=<c:url value="/js/demo/chart-area-demo.js"/>></script>
<script src=<c:url value="/js/demo/chart-pie-demo.js"/>></script>

</body>

</html>