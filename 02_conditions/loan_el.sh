#!/bin/bash

read -p "Age : " age
read -p "Monthly salary : " ms
read -p "Credit score : " cs
read -p "Existing loan(yes/no) : "  el

if [ "$age" -lt 21 ]; then
echo "Not eligible : age too low"
elif [ "$ms" -lt 25000 ]; then
echo "Not eligible : salary too low"
elif [ "$cs" -lt 650 ]; then
echo "Not eigible : credit score too low"
elif [ "$el" = "yes" ]; then 
echo "Manual review required"
else
echo "Loan eligible"
fi