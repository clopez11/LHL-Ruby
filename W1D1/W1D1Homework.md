1. What does CLI stand for?

* Command Line Interface

2. What is the difference between the following commands? Explain each one basically.

* a. 'cd ~' Move into home directory
* b. 'cd ~/' Same as "a". Can move user to the home * directory and into a specified directory
* c. 'cd .' Transfer over to the very same directory you're currently situated
* d. 'cd ..' Move up to parent directory
* e. 'cd /' Takes user to root directory 

3. In the following command, the first word is called the command, what is the remaining part called? mkdir -­p

* Flag, and ultimately an argument

4. What are the following commands doing? What is the difference between them? You may recall them from earlier today.

* a. 'cat /usr/share/dict/words | grep "ous$"' 
Lists the dictionary words that only end in 'ous'

* b. 'cat /usr/share/dict/words | grep "ous$"' | wc ­-l Outputs the numbers of words in the dictionary that only end in 'ous'

5. Given the grep command from the previous question: grep "ous$"

* a. What is the dollar sign being used for in the grep commands above? What happens if we don’t use it? 
The $ grabs words that ONLY end in 'ous'; if we don't use it, it will grab all words that include 'ous' regardless of position

* b. This argument for grep ("ous$"), contained within the double quotes, is more than just a string. What is this type of expression called? 
It's a regular expression

6. What does the | symbol, used in some of the Part 2 commands, do in Unix?

* It's called a "pipe" and grabs the left side's output and feeds it into the left side's command. It also connects one command to another

7. What does the > symbol do in the Unix CLI?

* It's called redirection and will place a command's output into a file specified on the right side of the '>'. If the file doesn't exist the file will be created; if the file exists the file will be overwritten and the new output will be added to the end of the file.

* Avoid this by using the '>>' which appeds the output to the end of the file.