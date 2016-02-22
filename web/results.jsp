<%-- 
    Document   : results
    Created on : Feb 19, 2016, 6:24:04 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Salary Calculator Results</title>
    </head>
    
    <% 
        String hoursWorked = request.getParameter("hworked");
        String payRate = request.getParameter("hpay");
        String preTaxDeduct = request.getParameter("pretax");
        String postTaxDeduct = request.getParameter("posttax");
        
        %>
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
                
                
            </tbody>
        </table>
    </body>
</html>
