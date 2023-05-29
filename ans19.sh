<<c
NAME 	   : Kaushik Harshit
ROLLNO     : 16
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEM
ASSIGNMENT : PRACTICAL ASSIGNMENT 1
********************************************************************************************************************************************************************************************

Q19 - The script receives two file names as arguments, the script must check whether the files are same or not, if they are similar then delete the second file.

********************************************************************************************************************************************************************************************
c
echo -e "Enter the path to the first file : \c"
read  file1
echo -e "Enter the path to the second file : \c"
read file2

if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "One or both files do not exist"
    exit 1
fi

if cmp -s "$file1" "$file2"; then
    echo "The files $file1 and $file2 are identical"
    echo -e "Do you want to delete the file $file2? (y/n) \c"
    read choice
    if [ "$choice" = "y" ]; then
        rm "$file2"
        echo "The file $file2 has been deleted."
    else
        echo "The file $file2 is not deleted."
    fi
else
    echo "The files $file1 and $file2 are different"
fi

<<c
********************************************************************************************************************************************************************************************

OUTPUT :

Enter the path to the first file : p10.sh
Enter the path to the second file : p10.sh
The files p16.sh and p16.sh are identical
Do you want to delete the file p16.sh? (y/n) n
The file p10.sh has not been deleted.
c