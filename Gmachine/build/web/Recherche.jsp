<%@page import="entities.Machine"%>
<%@page import="entities.Salle"%>
<%@page import="services.MachineService"%>
<%@page import="services.SalleService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Recherche de Machines</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <jsp:include page="index.html"/>
    <form action="RechercheController" method="post">
        <fieldset>
            <legend>Recherche de Machines par Salle</legend>
            <table border="0">
                <tr>
                    <td>Salle:</td>
                    <td>
                        <select name="salleId" class="combo">
                            <%
                                SalleService ss = new SalleService();
                                for (Salle salle : ss.findAll()) {
                            %>
                            <option value="<%= salle.getId() %>"><%= salle.getCode() %></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Rechercher" /></td>
                </tr>
            </table>
        </fieldset>
    </form>
    <fieldset>
        <legend>Résultats de la Recherche</legend>
        <table border="0">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>REF</th>
                    <th>MARQUE</th>
                    <th>PRIX</th>
                    <th>SALLE</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="machine" items="${machines}">
                    <tr>
                        <td>${machine.id}</td>
                        <td>${machine.ref}</td>
                        <td>${machine.marque}</td>
                        <td>${machine.prix}</td>
                        <td>${machine.salle.code}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </fieldset>
    <c:if test="${not empty errorMessage}">
        <p class="error-message">${errorMessage}</p>
    </c:if>
</body>
</html>
