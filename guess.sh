#!/usr/bin/env bash
fnumber=$(ls | wc -l)

function guess_file_number {
                        echo "Enter no and hit enter :"
                        read guess
                        if [[ $guess -eq $fnumber ]]
                        then
                                        echo "Guessed it right..."
                                        echo "The no of files are $guess"
                                        condition=0
                        else
                                        if [[ $guess -gt $fnumber ]]
                                        then
                                                        echo "There are less files than you expected... Enter a no again and press Enter :"
                                                        guess_file_number
                                        else
                                                        echo "There are more files than you expected... Enter a np again and press Enter :"
                                                        guess_file_number
                                        fi
                        fi
                }
echo "Welcome User.... Can you guess the no of files in the current directory"
condition=1
while [[ condition -ne 0 ]]
do
        guess_file_number
done
