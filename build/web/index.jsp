<%-- 
    Document   : index
    Created on : Feb 19, 2016, 5:08:54 PM
    Author     : Chenliang Ding
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type ="text/css" href="style.css" media="screen">
    </head>


    <body>
        <h1>Simple Salary Calculator</h1>
   
        <form name="salaryForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked</td>  
                        <td><input type="text" name="hworked" value="" size="50"></td>
                    </tr>
                    
                     <tr>
                        <td>Hourly Pay</td>  
                        <td><input type="text" name="hpay" value="" size="50"></td>
                    </tr>
                    
                     <tr>
                        <td>Pre-tax Deduct</td>  
                        <td><input type="text" name="pretax" value="" size="50"></td>
                    </tr>
                    
                     <tr>
                        <td>Post-tax Deduct</td>  
                        <td><input type="text" name="posttax" value="" size="50"></td>
                    </tr>
                    
                </tbody>
            </table> 
            
            <input type="submit" value="Submit" id="submit">
            <input type="reset" value="Clear" id="clear">
            
        </form>

    </body>
</html>
