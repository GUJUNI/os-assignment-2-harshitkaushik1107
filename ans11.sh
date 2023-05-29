<<c
NAME 	   : Kaushik Harshit
ROLLNO     : 16
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEM
ASSIGNMENT : PRACTICAL ASSIGNMENT 1
********************************************************************************************************************************************************************************************

Q11 - Write a script to print content of the file if file exits otherwise print appropriate message.

********************************************************************************************************************************************************************************************
c
Enter file name : p11.sh
read -p "Enter file name : " fileName

if [ -f $fileName ]
then
        cat $fileName
else
        echo "File does not exist"
fi

<<c
********************************************************************************************************************************************************************************************

OUTPUT :

Enter file name : test.sh
File does not exist

Enter file name : p1.sh
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
c