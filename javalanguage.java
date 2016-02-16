

import java.util.Scanner;	// import Scanner class

public class javalanguage
{
   public static void main(String[] args)
   {
	   Scanner input = new Scanner(System.in);	// create scanner object called input
	   double HoursWorked;
	   double HourlyRate;
	   double GrossPay;
	   double PretaxDeduct;
	   double PosttaxDeduct;
	   double TaxAmount;
	   double PosttaxAmount;
	   double NetPay;
	   int RegularHours=40;
	   double otHours;
	   double otPayRate;
	   double otPay;
	   double RegularPay;
	   double TaxablePay;
	   double PosttaxPay;
	   
	   
		
		//Determine if the first input is a multiple of the second input
		
			if (HoursWorked>40){
				
				otHours=HoursWorked-40;
				otPayRate=HourlyRate*1.5;
				otPay=otHours*otPayRate;
				RegularPay=HoursWorked*HourlyRate;
				GrossPay=RegularPay+otPay;
				}
				
			
				
			else 
			{GrossPay=HoursWorked*HourlyRate;}
		


TaxablePay=GrossPay-PretaxDeduct;

if (GrossPay<500){
	
TaxAmount=TaxablePay*.18;
}

else {
TaxAmount=TaxablePay*.22;
}

PosttaxPay=TaxablePay-TaxAmount;

NetPay=PosttaxPay-PosttaxDeduct;
	
	
	
	
	

		
		
		
			
			
	} //end method main
}// end class javalanguage