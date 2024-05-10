<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/header.jsp" %>

<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/users/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body">
            <form action="/users/add" method="post">
                <div class="form-group">
                    <label for="username">Nazwa</label>
                    <input id="username" name="username" type="text" class="form-control" placeholder="imię i nazwisko" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" type="email" class="form-control" placeholder="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Hasło</label>
                    <input id="password" name="password" type="password" class="form-control" placeholder="hasło" required>
                </div>
                <button type="submit" class="btn btn-primary">Dodaj</button>
            </form>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>
