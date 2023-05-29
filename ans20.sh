<<c
NAME 	   : Kaushik Harshit
ROLLNO     : 16
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEM
ASSIGNMENT : PRACTICAL ASSIGNMENT 1
********************************************************************************************************************************************************************************************

Q20 - Write a shell script to display the menu driven interface :- 1) list all files of the current directory 2) print the current directory 3) print the date 4) print the users otherwise display "Invalid Option".

********************************************************************************************************************************************************************************************
c
while true;
do
    echo "1. List all files of the current directory"
    echo "2. Print the current directory"
    echo "3. Print the date"
    echo "4. Print the users"
    echo "5. Exit"

    echo -e "Enter your choice : \c"
    read choice

    case $choice in
        1)
            ls
            ;;
        2)
            pwd
            ;;
        3)
            date
            ;;
        4)
            users
            ;;
        5)
            exit 0
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done

<<c
********************************************************************************************************************************************************************************************

OUTPUT :

1. List all files of the current directory
2. Print the current directory
3. Print the date
4. Print the users
5. Exit
Enter your choice : 2
/c/Users/harshit
c