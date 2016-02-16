<%-- 
    Document   : results
    Created on : Feb 15, 2016, 7:06:17 PM
    Author     : jarmes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javalanguage.java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
    </head>
    
    <%
        Double HoursWorked = Double.parseDouble(request.getParameter("HoursWorked"));
        Double HourlyPay = Double.parseDouble(request.getParameter("HourlyPay"));
        Double PretaxDeduct = Double.parseDouble(request.getParameter("Pre-taxDeduct"));
        Double PosttaxDeduct = Double.parseDouble(request.getParameter("Post-taxDeduct"));
         
        %>
    <body>
        <h1>User Information</h1>
        
        
        <table border="1">
            <tbody>
                
                <tr>
                    <td>Hours Worked:</td>
                    <td><%= HoursWorked%></td>
                    
                </tr>
                
                
                <tr>
                    <td>Hourly Pay:</td>
                    <td><%= HourlyPay%></td>
                </tr>
                
                
                <tr>
                    <td># Hours Overtime:</td>
                </tr>
                
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                </tr>
                
                
                 <tr>
                    <td>Gross Pay:</td>
                </tr>
                
                
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= PretaxDeduct%></td>
                </tr>
                
                 <tr>
                    <td>Pre-tax Pay:</td>
                </tr>
                
                 <tr>
                    <td>Tax Amount:</td>
                </tr>
                
                <tr>
                    <td>Post-tax Amount:</td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= PosttaxDeduct%></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                </tr>
            </tbody>
        </table>
         
               
    </body>
</html>
