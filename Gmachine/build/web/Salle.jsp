<%-- 
    Document   : salles
    Created on : 24 oct. 2023, 21:01:18
    Author     : Yassine
--%>

<%@page import="entities.Salle"%>
<%@page import="services.SalleService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
       <jsp:include page="index.html"/> 
    <form action="SalleController" method="post">

        <fieldset>
            <legend>Informations salles</legend>
            <table border="0">
                <tr>
                    <td>Code:</td>
                    <td><input type="text" name="code" value="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Ajouter" /><input type="reset" value="Annuler" /></td>
                </tr>
            </table>
        </fieldset>

        <fieldset>
            <legend>List of Rooms</legend>
            <table border="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Code</th>
                        <th>Modifier</th>
                        <th>Supprimer</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        SalleService salleService = new SalleService();
                        for (Salle salle : salleService.findAll()) {
                    %>
                    <tr>
                        <td><%= salle.getId() %></td>
                        <td><%= salle.getCode()%></td>
                        <!-- Display other room attributes -->
                        <td><a href="SalleController?op=update&id=<%=salle.getId()%>">Modifier</a></td>
                        <td><a href="SalleController?op=delete&id=<%=salle.getId()%>">Supprimer</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </fieldset>
    </form>
</body>
</html>