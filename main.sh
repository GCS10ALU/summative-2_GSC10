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

# Function to view all students
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

