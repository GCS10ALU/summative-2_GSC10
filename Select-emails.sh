#!/bin/bash

# Select just the emails of the students
cut -d ',' -f 1 students-list_1023.txt | tee student-emails.txt
echo "Emails of Students extracted successfully."

