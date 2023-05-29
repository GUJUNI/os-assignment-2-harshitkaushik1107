<<c
NAME 	   : Kaushik Harshit
ROLLNO     : 16
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEM
ASSIGNMENT : PRACTICAL ASSIGNMENT 1
********************************************************************************************************************************************************************************************

Q4 - Write a shell script to generate prime number from 1 to n, where n any positive integer number by user.

********************************************************************************************************************************************************************************************
c
echo "Enter a number : "
read num

i=3

echo "2"
while [ $i -le $num ]
do
        j=2
        flag="true"
        while [ $j -lt `expr $i / 2` ]
        do
                if [ `expr $i % $j` -eq 0 ];
                then
                        flag="false"
                        break
                fi

                j=`expr $j + 1`
        done

        if [ "$flag" = "true" ];
        then
                echo "$i"
        fi

        i=`expr $i + 1`
done

<<c
********************************************************************************************************************************************************************************************

OUTPUT :

Enter a number : 44
2
3
5
7
11
13
17
19
23
29
31
37
41
43
c