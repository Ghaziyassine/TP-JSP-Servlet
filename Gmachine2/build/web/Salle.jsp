<%-- 
    Document   : Salle
    Created on : 24 oct. 2023, 22:19:57
    Author     : YASSINE
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

        <form action="SalleController">

            <fieldset>
                <legend> Informations Salle</legend>
                <table border="0">


                    <tr>
                        <td>Code :</td>
                        <td><input type="text" name="code" value="" /></td>
                    </tr>

                    <tr>
                        <td><input type="submit" value="Ajouter" /><input type="reset" value="Annuler" /></td>
                        <td></td>
                    </tr>

                </table>

            </fieldset>
        </form>   
     <fieldset>               
            <legend> liste des Salles</legend>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Code</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%
                    SalleService ss= new SalleService();
                    for(Salle s: ss.findAll()){  
                        
                    %>
                    <tr>
                        
                        <td><%=s.getId()  %></td>
                        <td><%=s.getCode() %></td>
                        
                        <td><a href="MachineController?op=delete&id=<%=s.getId()%>">supprimer</a></td>
                        <td><a href="MachineController?op=update&id=<%=s.getId()%>">modifier</a></td>

                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>

        </fieldset>
    
    </body>
</html>
