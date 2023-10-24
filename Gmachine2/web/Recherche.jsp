<%-- 
    Document   : Recherche
    Created on : 24 oct. 2023, 21:38:51
    Author     : YASSINE
--%>

<%@page import="services.SalleService"%>
<%@page import="entities.Machine"%>
<%@page import="entities.Salle"%>
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

          <form action="SalleController">
            <fieldset>
                <legend> Recherche </legend>
                <table border="0">


                    <tr>
                        <td>salle :</td>
                        <td><input type="text" name="salle" value="" /></td>
                    </tr>

                    <tr>
                        <td><input type="submit" value="Ajouter" />
                        <td></td>
                    </tr>

                </table>

            </fieldset>
        </form> 
        
        <fieldset>               
            <legend> liste des machines par salle</legend>
            <table border="1">
                <thead>
                    <tr>
                         <th>ID</th>
                        <th>Référence</th>
                        <th>Marque</th>
                        <th>Prix</th>
                        <th>Supprimer</th>
                        <th>Modifier</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%
                        SalleService ss = new SalleService();
               for(Salle s : ss.findAll()){
                   for(Machine m : s.getMachines()){
                          %>
                    <tr>
                        
                         
                        <td><%=m.getId()  %></td>
                        <td><%=m.getRef() %></td>
                         <td><%=m.getMarque() %></td>
                        <td><%=m.getPrix()%></td>
                        
                       

                    </tr>
                    <%
                   }}
                    %>
                </tbody>
            </table>

        </fieldset>
    </body>
</html>
