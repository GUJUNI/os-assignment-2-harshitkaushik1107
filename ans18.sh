<<c
NAME 	   : Kaushik Harshit
ROLLNO     : 16
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEM
ASSIGNMENT : PRACTICAL ASSIGNMENT 1
********************************************************************************************************************************************************************************************

Q18 - If cost price and selling price of an item are entered through the keyboard, write a program to determine whether the seller has made profit or loss. Also determine how much profit/loss is made.

********************************************************************************************************************************************************************************************
c
echo -e "Enter the cost price: \c"
read cost_price
echo -e "Enter the selling price: \c"
read selling_price

if [ $selling_price -gt $cost_price ]; 
then
    profit=$((selling_price - cost_price))
    echo "The seller has made a profit of $profit."

elif [ $selling_price -lt $cost_price ];
then
    loss=$((cost_price - selling_price))
    echo "The seller has incurred a loss of $loss."

else
    echo "The seller has neither made a profit nor incurred a loss."
fi

<<c
********************************************************************************************************************************************************************************************

OUTPUT :

Enter the cost price: 1500
Enter the selling price: 2000
The seller has made a profit of 500.
c