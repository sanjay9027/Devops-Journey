# Shell Scripting

### Declare variable & print it

```
#! /bin/bash 
NAME="Sanjay" 
echo "$NAME" 
echo $NAME  
echo "${NAME}" 
```

---
### Give Permission to access file
`chmod 777 <file_name>`

---
### Read data from UI & Print

``` 
#!/bin/bash
echo "Enter your age ."
read AGE  
echo "My age is ${AGE}" 
```

---
### Sleep
`sleep 2  -> add 2 second sleep in execution`

---
### Take user argument & print it
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
### 
