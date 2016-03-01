<%-- 
    Document   : index
    Created on : Feb 15, 2016, 7:06:07 PM
    Author     : jarmes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="CalculationStyle.css"/>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="simpleSalaryCalculator" action="results.jsp" method="post">
            <table>
                
                <tbody>
                    <tr> 
                        <td>Hours Worked:</td>
                        <td><input type="text" name="HoursWorked" value="" size="50" required></td>
                    </tr>
                    
                    <tr> 
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="HourlyPay" value="" size="50" required></td>
                    </tr>
                    
                    <tr> 
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="Pre-taxDeduct" value="" size="50" required></td>
                    </tr>
                    
                    <tr> 
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="Post-taxDeduct" value="" size="50" required></td>
                    </tr>
                </tbody>
            </table> 
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
            
        </form>
    
        
        </body>
</html>
