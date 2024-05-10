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
            <h6 class="m-0 font-weight-bold text-primary">Edytuj użytkownika</h6>
        </div>
        <div class="card-body">
            <form action="/users/edit" method="post">
                <div class="form-group">
                    <input id="id" name="id" type="hidden" class="form-control" value="${user.id}">
                    <label for="username">Nazwa</label>
                    <input id="username" name="username" type="text" class="form-control" value="${user.userName}">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" type="email" class="form-control" value="${user.email}">
                </div>
                <div class="form-group">
                    <label for="password">Hasło</label>
                    <input id="password" name="password" type="password" class="form-control" placeholder="hasło">
                </div>
                <button type="submit" class="btn btn-primary">Zatwierdź edycję</button>
            </form>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>
