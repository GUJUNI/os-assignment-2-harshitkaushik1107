<<c
NAME 	   : Kaushik Harshit
ROLLNO     : 16
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEM
ASSIGNMENT : PRACTICAL ASSIGNMENT 1
********************************************************************************************************************************************************************************************
Q10 - Write a menu driven shell script for storing employee information (like  add , delete , modify, display info)
********************************************************************************************************************************************************************************************
c
declare -A employees

add_employee() {
    echo "Enter employee ID:"
    read id
    echo "Enter employee name:"
    read name
    echo "Enter employee designation:"
    read designation

    employees[$id]="Name: $name, Designation: $designation"
    echo "Employee added successfully!"
}

delete_employee() {
    echo "Enter employee ID to delete:"
    read id

    if [[ -v employees[$id] ]]; then
        unset employees[$id]
        echo "Employee deleted successfully!"
    else
        echo "Employee not found!"
    fi
}

modify_employee() {
    echo "Enter employee ID to modify:"
    read id

    if [[ -v employees[$id] ]]; then
        echo "Enter new employee name:"
        read name
        echo "Enter new employee designation:"
        read designation

        employees[$id]="Name: $name, Designation: $designation"
        echo "Employee information modified successfully!"
    else
        echo "Employee not found!"
    fi
}

display_employees() {
    if [ ${#employees[@]} -eq 0 ]; then
        echo "No employees found!"
    else
        echo "Employee Information:"
        for id in "${!employees[@]}"; do
            echo "Employee ID: $id, ${employees[$id]}"
        done
    fi
}

while true
do
    echo
    echo "Employee Information Storage"
    echo "1. Add Employee"
    echo "2. Delete Employee"
    echo "3. Modify Employee Information"
    echo "4. Display Employees"
    echo "5. Exit"
    echo

    echo -e "Enter your choice: \c"
    read choice
    echo

    case $choice in
        1)
            add_employee
            ;;
        2)
            delete_employee
            ;;
        3)
            modify_employee
            ;;
        4)
            display_employees
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done

<<c
Output
Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 1

Enter employee ID:
101
Enter employee name:
Kaushik Harshit
Enter employee designation:
Manager
Employee added successfully!

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 1

Enter employee ID:
102
Enter employee name:
Aman Lakhanpal
Enter employee designation:
Engineer
Employee added successfully!

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 4

Employee Information:
Employee ID: 101, Name: Kaushik Harshit, Designation: Manager
Employee ID: 102, Name: Aman Lakhanpal, Designation: Engineer

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 2

Enter employee ID to delete:
101
Employee deleted successfully!

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 4

Employee Information:
Employee ID: 102, Name: Aman Lakhanpal, Designation: Engineer

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 3

Enter employee ID to modify:
102
Enter new employee name:
Hardik Vaghela
Enter new employee designation:
Senior Engineer
Employee information modified successfully!

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 4

Employee Information:
Employee ID: 102, Name: Hardik Vaghela, Designation: Senior Engineer

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 5

Exiting...
c
