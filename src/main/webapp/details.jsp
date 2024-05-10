<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/header.jsp" %>

<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/users/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Wróć</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row mb-2">
                        <div class="col-4 font-weight-bold">Id</div>
                        <div class="col-8">${user.id}</div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-4 font-weight-bold">Nazwa użytkownika</div>
                        <div class="col-8">${user.userName}</div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-4 font-weight-bold">Email</div>
                        <div class="col-8">${user.email}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>
