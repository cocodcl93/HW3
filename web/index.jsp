<%-- 
    Document   : index
    Created on : Feb 19, 2016, 5:08:54 PM
    Author     : Chenliang Ding
--%>
<%@page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculation</title>
        
  
    </head>
    
    <%
        Date today = new Date();
        DateFormat dateFormat= new DateFormat ("dd-MM-yyyy");
        String ddMMyyyyToday = dateFormat.fomat(today)
        
    %>
    <body>
        <h1>Hello World!</h1>
        <P> Today is: <%= today %>
    </body>
</html>
