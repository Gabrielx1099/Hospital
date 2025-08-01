<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="list-group">
    <a href="dashboard.jsp" class="list-group-item list-group-item-action <c:if test='${pageContext.request.servletPath == "/user/dashboard.jsp"}'>active</c:if>'">
        <i class="fas fa-tachometer-alt"></i> Dashboard
    </a>
    <a href="perfil.jsp" class="list-group-item list-group-item-action">
        <i class="fas fa-user"></i> Mi Perfil
    </a>
    <a href="citas.jsp" class="list-group-item list-group-item-action">
        <i class="fas fa-calendar-check"></i> Mis Citas
    </a>
    <a href="../solicitar_cita.jsp" class="list-group-item list-group-item-action">
        <i class="fas fa-plus"></i> Solicitar Cita
    </a>
    <a href="logout" class="list-group-item list-group-item-action text-danger">
        <i class="fas fa-sign-out-alt"></i> Cerrar sesion
    </a>
</div>