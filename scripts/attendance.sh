#!/bin/bash
FILE="../data/attendance.txt"

while true
do
echo "1. Add Student"
echo "2. Mark Attendance"
echo "3. View Report"
echo "4. Exit"

read -p "Enter your choice: " choice

case $choice in

1)
   echo "Enter student name:"
   read name
   echo "$name" >> $FILE
   echo "Student added"
   ;;
2)
   echo "Enter student name:"
   read name
   echo "$name - Present - $(date)" >> $FILE
   echo "Attendance marked"
   ;;
3)
   cat $FILE
   ;;
4)
   exit
   ;;
*)
   echo "Invalid choice"
   ;;
esac
done

