1. Write a command that will output the number of times the cat command was used previously

* history | grep "cat" | wc -l

2. Write a command to output a count of all words in the unix dictionary file that begin with the letter "a"

* cat /usr/share/dict/words | grep "^a" | wc -l
* cat /usr/share/dict/words | grep "^a"

3. What operating system (OS) vendor and version is your vagrant box running?

* Darwin Charlottes-MacBook-Pro.local 15.6.0 Darwin Kernel Version 15.6.0: Mon Aug 29 20:21:34 PDT 2016; root:xnu-3248.60.11~1/RELEASE_X86_64 x86_64

4. What UNIX command did you run to get the answer to the previous question?

* uname -a

5. Return all the words in the dictionary that start with "a" and end with "s"

* cat /usr/share/dict/words | grep "^a" | grep "s$" | wc -l
* cat /usr/share/dict/words | grep "^a" | grep "s$"

6. Using one unix command, download & save the following page: www.lighthouselabs.ca/index.html

* curl -o index.html lighthouselabs.ca/index.html 