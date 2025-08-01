<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Detectar si el registro viene del panel de recepcionista
    Boolean desdeRecepcionista = false;
    if (session.getAttribute("registroRecepcionista") != null) {
        desdeRecepcionista = (Boolean) session.getAttribute("registroRecepcionista");
    }
%>
<% if (desdeRecepcionista) { %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <jsp:include page="WEB-INF/header.jsp">
        <jsp:param name="title" value="Verificar Código"/>
    </jsp:include>
    <div class="container-fluid mt-4">
        <div class="row">
            <div class="col-md-3">
                <jsp:include page="recepcionista/sidebar.jsp"/>
            </div>
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h3 class="mb-0">Verificación de Correo</h3>
                    </div>
                    <div class="card-body">
                        <% if(request.getAttribute("error") != null) { %>
                            <div class="alert alert-danger">
                                <%= request.getAttribute("error") %>
                            </div>
                        <% } %>
                        <form action="validar-codigo" method="post">
                            <div class="mb-3">
                                <label for="codigo" class="form-label">Código de verificación</label>
                                <input type="text" class="form-control" id="codigo" name="codigo" required maxlength="6" pattern="[0-9]{6}" placeholder="Ingresa el código de 6 dígitos">
                            </div>
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary">Verificar y Registrar</button>
                            </div>
                        </form>
                        <div class="text-center mt-3">
                            <p>¿No recibiste el código? <a href="recepcionista/registrar_paciente.jsp">Volver a registrarse</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="WEB-INF/footer.jsp"/>
<% } else { %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Verificar Código - Hospital La Hoz</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/styles.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h3 class="text-center mb-0">Verificación de Correo</h3>
                    </div>
                    <div class="card-body">
                        <% if(request.getAttribute("error") != null) { %>
                            <div class="alert alert-danger">
                                <%= request.getAttribute("error") %>
                            </div>
                        <% } %>
                        <form action="validar-codigo" method="post">
                            <div class="mb-3">
                                <label for="codigo" class="form-label">Código de verificación</label>
                                <input type="text" class="form-control" id="codigo" name="codigo" required maxlength="6" pattern="[0-9]{6}" placeholder="Ingresa el código de 6 dígitos">
                            </div>
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary">Verificar y Registrar</button>
                            </div>
                        </form>
                        <div class="text-center mt-3">
                            <p>¿No recibiste el código? <a href="registro.jsp">Volver a registrarse</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<% } %> 