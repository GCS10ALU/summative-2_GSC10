#!/bin/bash

# Function to create a new student record
create_student() {
    echo "Enter student email:"
    read email
    echo "Enter student age:"
    read age
    echo "Enter student ID:"
    read id

    # Check if student ID already exists
    if grep -q "^.*,$id\$" students-list_1023.txt; then
        echo "Error: Student with ID $id already exists."
    else
        # Append student record to file
        echo "$email,$age,$id" >> students-list_1023.txt
        echo "Student record created successfully."
    fi
}

# Function to view all students details
view_students() {
    echo "List of Students:"
    cat students-list_1023.txt
}

# Function to delete a student by ID
delete_student() {
    echo "Enter student ID to delete:"
    read id

    # Check if student ID exists
    if grep -q "^.*,$id\$" students-list_1023.txt; then
        # Delete student record by ID
        sed -i "/^.*,$id\$/d" students-list_1023.txt
        echo "Student with ID $id deleted successfully."
    else
        echo "Error: Student with ID $id does not exist in our system."
    fi
}

# Function to update a student record by ID
update_student() {
    echo "Enter student ID to update:"
    read id

    # Check if student ID exists
    if grep -q "^.*,$id\$" students-list_1023.txt; then
        echo "Enter new email:"
        read new_email
        echo "Enter new age:"
        read new_age
        # Update student record by ID
        sed -i "s/^.*,$id\$/$new_email,$new_age,$id/" students-list_1023.txt
        echo "Student with ID $id updated successfully."
    else
        echo "Error: Student with ID $id does not exist in our system."
    fi
}

# Main loop
while :
do
    echo "ALU Registration System"
    echo "1. Create Student Record"
    echo "2. View All Students"
    echo "3. Delete Student"
    echo "4. Update Student"
    echo "5. Exit"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) exit ;;
        *) echo "Invalid option. Please choose again." ;;
    esac
done

