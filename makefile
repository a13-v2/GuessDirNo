readme : guessinggame.sh
        touch README.md
        echo "The title of the project. Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
        echo "The date and time at which make was run." >> README.md
        date >> README.md
        echo "The number of lines of code contained in guess.sh" >> README.md
        cat guessinggame.sh | wc -l >> README.md
