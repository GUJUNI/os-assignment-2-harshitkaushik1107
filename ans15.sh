<<c
NAME 	   : Kaushik Harshit
ROLLNO     : 16
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEM
ASSIGNMENT : PRACTICAL ASSIGNMENT 1
********************************************************************************************************************************************************************************************

Q15 - Basic salary of a person is input through the keyboard. His dearness allowance is 40% of basic salary and house rent is 20% of basic salary. Write a program to calculate the gross pay.

********************************************************************************************************************************************************************************************
c
echo -e "Enter basic salary: \c"
read basic_salary

da=$(echo "scale=2; $basic_salary * 0.4" | bc)
hr=$(echo "scale=2; $basic_salary * 0.2" | bc)
gross_pay=$(echo "scale=2; $basic_salary + $da + $hr" | bc)

echo "Basic salary: $basic_salary"
echo "Dearness allowance: $da"
echo "House rent: $hr"
echo "Gross pay: $gross_pay"

<<c
********************************************************************************************************************************************************************************************

OUTPUT :

Enter basic salary: 10000
Basic salary: 10000
Dearness allowance: 4000
House rent: 2000
Gross pay: 16000
c