<%-- 
    Document   : results
    Created on : Feb 15, 2016, 7:06:17 PM
    Author     : jarmes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
        <link rel="stylesheet" type="text/css" href="CalculationStyle.css"/>
    </head>
    
    <%
        Double HoursWorked = Double.parseDouble(request.getParameter("HoursWorked"));
        Double HourlyPay = Double.parseDouble(request.getParameter("HourlyPay"));
        Double PretaxDeduct = Double.parseDouble(request.getParameter("Pre-taxDeduct"));
        Double PosttaxDeduct = Double.parseDouble(request.getParameter("Post-taxDeduct"));
        double GrossPay= 0.00;
	double TaxAmount= 0.00;
	double PosttaxAmount= 0.00;
	double NetPay= 0.00;
	int RegularHours=40;
	double otHours= 0.00;
	double otPayRate= 0.00;
	double otPay= 0.00;
	double RegularPay= 0.00;
	double TaxablePay= 0.00;
	double PosttaxPay= 0.00;
        
        
    %>
    
    <%   
	   
		
		
		
			if (HoursWorked>40){
				
				otHours=HoursWorked-40;
				otPayRate=HourlyPay*1.5;
				otPay=otHours*otPayRate;
				RegularPay=RegularHours*HourlyPay;
				GrossPay=RegularPay+otPay;
				}
				
			
				
			else 
			{GrossPay=HoursWorked*HourlyPay;}
		


TaxablePay=GrossPay-PretaxDeduct;

if (GrossPay<500){
	
TaxAmount=TaxablePay*.18;
}

else {
TaxAmount=TaxablePay*.22;
}

PosttaxPay=TaxablePay-TaxAmount;

NetPay=PosttaxPay-PosttaxDeduct;
	
	              
 %>
    
    <body>
        <h1>User Information</h1>
        
        
        <table border="1">
            <tbody>
                
                <tr>
                    <td>Hours Worked:</td>
                    <td><%=HoursWorked%></td>
                    
                </tr>
                
                
                <tr>
                    <td>Hourly Pay:</td>
                    <td><%= HourlyPay%></td>
                </tr>
                
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%=otHours%></td>
                </tr>
                
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%=otPayRate%></td>
                </tr>
                
                
                 <tr>
                    <td>Gross Pay:</td>
                    <td><%=GrossPay%></td>
                </tr>
                
                
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= PretaxDeduct%></td>
                </tr>
                
                 <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= RegularPay%></td>
                </tr>
                
                 <tr>
                    <td>Tax Amount:</td>
                    <td><%= TaxAmount%></td>
                </tr>
                
                <tr>
                    <td>Post-tax Amount:</td>
                    <td><%= PosttaxPay%></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%=PosttaxDeduct%></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= NetPay%></td>
                </tr>
            </tbody>
        </table>   
    </body>
</html>
