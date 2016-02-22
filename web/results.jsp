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
        <link rel="stylesheet" type ="text/css" href="style.css" media="screen">
    </head>
    
    <% 
        Double hoursWorked = Double.parseDouble(request.getParameter("hworked"));
        Double payRate = Double.parseDouble(request.getParameter("hpay"));
        Double preTaxDeduct = Double.parseDouble(request.getParameter("pretax"));
        Double postTaxDeduct = Double.parseDouble(request.getParameter("posttax"));
        Double otHours = 0.00;
        Double otPayRate = 0.00;
        Double otPay = 0.00;
        Double grossPay = 0.00;
        Double regularPay = 0.00;
        Double taxAmount = 0.00;
        Double regularHours = 0.00;
        
        
        if (hoursWorked>40){
                regularHours = 40.00;
                otHours = hoursWorked - 40;
                otPayRate = payRate * 1.5;
                otPay = otHours * otPayRate;
                regularPay = regularHours * payRate;
                grossPay = regularPay + otPay;
         }
         else {
                grossPay = hoursWorked * payRate;
         }
         
        Double preTaxPay = grossPay - preTaxDeduct;
        
        if (grossPay < 500){
                taxAmount = preTaxPay * 0.18;
        }
        else { taxAmount =preTaxPay * 0.22;
        }
       
        Double postTaxPay = preTaxPay -taxAmount;
        Double netPay = postTaxPay - postTaxDeduct;
            
            
        
        
        %>
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= payRate %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= otHours %></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otPayRate %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= preTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
                
                
            </tbody>
        </table>
    </body>
</html>
