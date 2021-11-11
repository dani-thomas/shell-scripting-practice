#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
# Then, capture the user selection.
# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.
#!/bin/bash

echo "Hello world! This is Daniella's calculator."
echo ""

while [ true ]
do
    clear;
    echo "Please select one of the following options:"
    echo "(A)DD" # A for ADD
    echo "(S)UB" # S for SUB
    echo "(M)ULT" # M for MULT
    echo "(D)IV" # D for DIV
    echo "(E)XIT" # E for EXIT
    echo ""

    # Read user input
    read input

    if [ "$input" == "A" ] || [ "$input" == "S" ] || [ "$input" == "M" ] || [ "$input" == "D" ] || [ "$input" == "E" ]
    then
        # If E then exit loop
        if [ "$input" == "E" ]
        then
            echo "Bye Bye!";
            break;
        fi

        # Get first number
        read -p "Enter first number: " firstNumber;

        # Get second number
        read -p "Enter second number: " secondNumber;

        case $input in
            A) res=$(($firstNumber + $secondNumber));;
            S) res=$(($firstNumber - $secondNumber));;
            M) res=$(($firstNumber * $secondNumber));;
            D) res=$(($firstNumber / $secondNumber));;
        esac
        echo "Result: $res";
    echo ""

    else
        # Wrong selection
        echo "Option entered is not valid."
    echo ""
    fi

    #Holds the screen from clearing
    echo "Press any key to continue"
    read
done