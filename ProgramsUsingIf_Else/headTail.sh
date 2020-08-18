#!/bin/bash

#Write a program to simulate a coin flip and print out Head or Tails accordingly.

        coin=$((RANDOM%2))
        echo "Output after flipping the coin is: ";
        if [[ $coin -eq 0 ]]; then
                echo "Heads";
        else
                echo "Tail";
        fi

