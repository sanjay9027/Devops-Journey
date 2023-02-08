# Shell Scripting

- What is a Shell script?
    - program designed to run on a UNIX-based command terminal/shell
- What is Bash?
    - Dialect of a shell syntax
    - `BASH` → Bourne Again Shell
    - Its a standard syntax
    - Used as a scripting language
    - `.sh` → Bash script extension

---

- By default, shell script files don’t have executable permissions
    - To make the file an executable:
        
        ```bash
        chmod 777 <name>.sh
        ```
        
- To run a shell script:

```bash
./<name.sh>
```

---

- Writing the first script
    - Declaration of a bash script:
        
        ```bash
        #! /bin/bash
        ```
        
        - `#!` → Shebang
        - `/bin/bash` → location of the bash executable
    - To use comments → `#`
---
- Declare variable & print it

```
#! /bin/bash 
NAME="Sanjay" 
echo "$NAME" 
echo $NAME  
echo "${NAME}" 
```

---
- Read data from UI & Print

``` 
#!/bin/bash
echo "Enter your age ."
read AGE  
echo "My age is ${AGE}" 
```

---
- Sleep
`sleep 2  -> add 2 second sleep in execution`

---
- Take user argument & print it
`note : $1 refers to 1st argument , if we use anything else ( Eg. $arg1) then this will not work.`

```
#!/bin/bash
echo "first argument is  $1"
echo "2ns argument is $2"
```
output : 
``` 
root@ip-172-31-36-98:/home/ubuntu/scripts# ./file1.sh Sanjay 25 
first argument is  Sanjay
2ns argument is 25
```
---
- Conditionals in a script
    - **IF statement**
        - Syntax:
            
            ```bash
            if [ expression ]
            then
               statement
            fi
            ```
            
    - **IF-Else statement**
        - Syntax:
            
            ```bash
            if [ expression ]
            then
               statement
            else
            	statement
            fi
            ```
            
    - **IF..elif..else..fi statement**
        - Syntax:
            
            ```bash
            if [ expression1 ]
            then
               statement1
               .
               .
            elif [ expression2 ]
            then
               statement2
               .
               .
            else
               statement3
            fi
            ```
            
- Comparisons (Operators)
    - `-eq` : check for equality
    - `-ne` : check for not equals
    - -`gt` : check for greater than
    - `-ge` : check for greater than or equals
    - `-lt` : check for less than
    - `-le` : check for less than or equals
- File Conditions
    - `-d <file>` : check for a directory
    - `-f <file>` : check for file existence or if the provided string is a file
    - `-g <file>` :  check for group id is set or not
    - `-r <file>` : check for if file is readable
    - `-s <file>` : check for if file has non-zero size
    - `-u` : user id set on file (true)
    - `-w` : file is writable (true)
    - `-x` : file is executable (true)
