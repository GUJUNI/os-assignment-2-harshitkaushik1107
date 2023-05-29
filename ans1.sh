<<c
NAME 	   : Kaushik Harshit
ROLLNO     : 16
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEM
ASSIGNMENT : PRACTICAL ASSIGNMENT 1
********************************************************************************************************************************************************************************************

Q1 - Write a shell script to display all odd and even numbers using various loops available(for, while and until).
********************************************************************************************************************************************************************************************
c
echo "Enter a number : "
read num

i=0

echo "Even numbers : "
while [ $i -le $num ]
do
        if [ `expr $i % 2` -eq 0 ]
        then
                echo "$i"
        fi
        i=`expr $i + 1`
done

j=0

echo "Odd numbers : "
until [ ! $j -le $num ]
do
        if [ `expr $j % 2` -ne 0 ]
        then
                echo "$j"
        fi
        j=`expr $j + 1`
done

********************************************************************************************************************************************************************************************
<<c
OUTPUT : 

Enter a number : 10
Even numbers :
0
2
4
6
8
10
Odd numbers :
1
3
5
7
9
c