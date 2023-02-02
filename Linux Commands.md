### List Of Commands

- `ls` → list all files & folder in a directory
- `mkdir <name>` → create a new folder
- `cd` → changing the directory/folder
- `cd ..` → to go back a folder
- `pwd` → print working directory or current directory
- `ls -a` → list all the hidden files as well
- `ls -lt` → sorting the formatted listing by time modification
- `ls -l` → showing the file permissions as well
    - `rwxd` ⇒ read, write, execute, delete
- `ls -al` → combining the above two commands
    - hidden files + details
- Relative path:
    - `.` → the current directory
    - `..` → the previous directory
- `cd <the whole path>` → you can specify the whole path of your directory
- `ls -R` → listing all the sub-directories as well
- `cat <file_name>` → used to see whats inside a file quickly through the terminal  (concatinate)
- `cat > <filename>` → quickly create a file & add some text to it
    - `>` → **Redirection command:** redirect the output to some other file
- `cat file1 file2 > file3`  → merging the contents of file 1&2 into file 3
- `echo “something” > file.txt` → will add the text to the file mentioned
- `man <command>` → to learn more about a command (information)
- `|`  → **Pipe Command:** output for the 1st command, acts as input for the 2nd command
    - Example:
    
    ```bash
    cat file.txt | tr a-z A-Z > upper.txt
    ```
    
- `tr` → tranlate characters

---

### File System Commands

- `mkdir <name or path>` → make a new directory
- `mkdir -p dir1/middle/dir2` → creating a directory in the middle of `dir1` & `dir2`
- `touch <filename or path>` → create a new file

- `mv <filename> <location>` → to move a file to a new location
    - can also be used to rename a file
    - `mv <filename> <newfilename>`
- `mv <filename> <location + newfilename>` → to move as well as rename the file
- `rm <filename>` → to remove a file
    - Caution ⇒ removed permanently
- `rmdir` → removes an empty directory
    - `rm -R` → to remove a directory completely along with its sub-directories
- `rm -f file` → force to remove the file
- `cp <filename> <new filename>` → to make a copy of a file
- `cp -R dir1 dir2` → copy `dir1` to `dir2`
- `sudo` → super-user do (admin access command)
    - Need password for this
- `df` → check out the free disk space
    - it has flags:
        - `-h` → in human-readable format
- `du` → disk usage statistics
- `head <filename>` → by default will display the first 10 lines of a file
    - `head -n 3 <file>` → will only display the first 3 lines
- `tail <filename>` → by default displays the last 10
- `diff file1 file2` → compares both the files & would output the uncommon ones
- `locate "file extension"` → locates all the files with the same extension as mentioned
    - Example:
    
    ```bash
    locate "*.txt"
    ```
    
- `find <name>` → find things in a file or a directory
    - lot of useful flags here
    - check out `man find` 

---

### File Permissions

- Three types:
    - read (r)
    - write (w)
    - execute (x)
- Three types of ppl that these permissions are set for:
    - user
    - group → an entity among a user group
    - guests or the other people
- `ls -l <filename>` → shows the file permissions for that particular file
    - Example:
    
    ```bash
    ls -l test2.txt
    
    -rw-r--r--  1 kunalverma  staff  19 Jun 16 11:44 test2.txt
    ```
    
    - `-rw` : for the user
    - `-r` : for a group
    - `--r` : for other ppl
- **Changing the file permissions**
    1. `chmod` command
        
        ```bash
        chmod u=rwx,g=rx,o=r <filename>
        ```
        
        - changes made here:
            - User: `rwx`
            - Group: `rx`
            - Other: `r`
    2. Using octal numbers with `chmod`
        - `chmod 777 <filename>`
            - `777` → full access to everyone
        - Categories:
            - `4` → read
            - `2` → write
            - `1` → execute
            - `0` → no permission
- **Changing the users of a file**
    - `chown` command
        
        ```bash
        sudo chown root <filename>
        ```
        
        - we have to use `sudo` as we are accessing `root` permissions
        - `root` user has the highest number of permissions in linux/unix based systems

---

- Performing action on multiple files
    - `-exec` command
        - does not create a new process it just replaces the bash with the command to be executed

---

- **grep** command
    - Global regular expression print
    - Allows to search some text in files
    - Case sensitive
        - Versions of grep:
        
        ```bash
        grep -V
        ```
        
        - **Mac** → BSD grep
        - **Linux** → GNU
    1. Simple search
        
        ```bash
        grep "Ram" names.txt
        
        **Ram**
        ```
        
        - If present, it will return the string itself!
    2. Expanding the whole word
        
        ```bash
        grep -w "Ramesh" names.txt
        
        **Ramesh** Parida
        ```
        
        - Using `-w` (means word-regexp), we searched for the “Ramesh” & it returned the whole string associated with that word!
    3. To ignore the search case-sensitivity
        
        ```bash
        grep -i "ramesh" names.txt
        
        **Ramesh** Parida
        ```
        
    4. Print the line number of the word
        
        ```bash
        grep -n "Sanjay" names.txt
        
        1:Sanjay
        ```
        
    5. Print lines after & before the word
        
        ```bash
        grep -B 5 "Hari" names.txt
        
        Sanjay
        Vinay
        Kunal
        Amit
        Somya
        **Hari**
        ```
        
        - `-B 5` → means print 5 lines before the actual word we are searching
        
        ```bash
        grep -A 5 "Hari" names.txt
        ```
        
        - `-A 5` → means print 5 lines after the actual word we are searching
    6. To search the entire directory for a word
        
        ```bash
        grep -win "Sanjay" ./*.txt
        ```
        
        - This will check all the `.txt` files in the current directory for the word
    7. Which file contains a match
        
        ```bash
        grep -wirl "Sanjay" .
        ```
        
        - using the `-l` tag here, we found the file that contained “Kunal” in the current directory
    8. Using `regex` to serch
        - Regular expression commands
        - **Come back to it later**

---

- **Useful terminal shortcuts**
    - `history` command
        - shows a history of all the commands you ran in that particular session
        - to directly use a command from history
       
    - `;` → to use multiple commands in the same line
    
    ```bash
    git add .;git commit -m "message";git push origin main
    ```
    

---

- `ping <URL>` → to check the connectivity status of a website
- `wget <URL>` → to download any file from the internet
    - you’ll have to install this using your package managers
        - `apt install`
        - `brew install`
        - `yum install`
- `top` → process running + CPU usage
    - `kill <process_id>` → to stop a running process
- `uname` → prints out your OS name
    - has many tags associated
- `zip & unzip`
- `hostname` → prints the host’s name
- `id` → to check user & group id’s
---



### Working with Operators

- Combining various commands together
1. `&` operator
2. `&&` operator
    
    ```bash
    echo "first" && echo "second"
    ```
    
    - only when the `first` command is completed, then the `second` will run
3. `;` operator
4. `||` operator (OR)
5. `|` operator (pipe)
6. `!()` operator (NOT)
7. `>` → over-write
8. `>>` → append
    
    ```bash
    echo "hey" >> names.txt
    ```
    
9. `{}` → combination operator

---
### Process Management

- `ps ` To display the currently working processes
- `top`  Display all running process
- `kill pid`  Kill the process with given pid
- `killall proc` Kill all the process named proc
- `pkill pattern` Will kill all processes matching the pattern
- `bg ` List stopped or background jobs,resume a stopped job inthe background
- `fg ` Brings the most recent job to foreground
- `fg n` Brings job n to the foreground

---
### System Info

- `whoami ` Username of the users logged in at the terminal.
- `hostname ` Display hostname of the system /ec2 instance/machine details.
- `hostname -f ` Displays Fully Qualified Domain Name (FQDN) of the system.
- `hostname i `	to seee only ip address
- `passwd ` Change password of current user.
- `pwd ` Get the full path of the current working directory.
- `ipconfig ` used on windows to get ip address & all other ip ddress of i/o devices of - machine 
- `ifconfig ` used on linux to get ip address  & all other ip ddress of i/o devices of - machine
- `cat /etc/os-release ` to see details of OS 
- `date` Show the current date and time
- `cal` Show this month's calender
- `uptime` Show current uptime
- `w` Display who is on line
- `finger user` Display information about user
- `uname -a`  Show kernel information
- `cat /proc/cpuinfo`  Cpu information
- `cat proc/meminfo`  Memory information
- `man command` Show the manual for command
- `df ` Show the disk usage
- `du ` Show directory space usage
- `free`  Show memory and swap usage
- `whereis app`  Show possible locations of app
- `which app ` Show which applications will be run by default

---
### Searching

- `grep pattern file` Search for pattern in file
- `grep -r pattern dir` Search recursively for pattern in dir
- `command | grep pattern` Search pattern in the output of a command
- `locate file` Find all instances of file
- `find . -name filename` Searches in the current directory (represented by a period) and below it, for files and directories with names starting with filename
- `pgrep pattern` Searches for all the named processes , that
matches with the pattern and, by default, returns their ID

---
### Compression
- `tar cf file.tar ` file Create tar named file.tar containing file
- `tar xf file.tar`  Extract the files from file.tar
- `tar czf file.tar.gz files ` Create a tar with Gzip compression
- `tar xzf file.tar.gz`  Extract a tar using Gzip
- `tar cjf file.tar.bz2` Create tar with Bzip2 compression
- `tar xjf file.tar.bz2`  Extract a tar using Bzip2
- `gzip file` Compresses file and renames it to file.gz
- `gzip -d file.gz`  Decompresses file.gz back to file

---
### Network
- `ping host` Ping host and output results
- `whois domain` Get whois information for domains
- `dig domain` Get DNS information for domain
- `dig -x host` Reverse lookup host
- `wget file` Download file
- `wget -c file` Continue a stopped download

---
### Shortcuts
- `ctrl+c` Halts the current command
- `trl+z` Stops the current command, resume with fg in the foreground or bg in the background
- `ctrl+d` Logout the current session, similar to exit
- `ctrl+w` Erases one word in the current line
- `ctrl+u` Erases the whole line
- `ctrl+r ` Type to bring up a recent command
- `!! ` Repeats the last command
- `exit`  Logout the current session

---
### User Management
- `useradd rocky ` 	Create a user named "rocky"
- `note- to add multiple users , we need to loop above command using Bash. `
- `groupadd devops ` Create a group named "devops"

- `gpasswd -a rocky devops ` Add user "rocky" to group "devops"  -a means add
- `gpasswd -d rocky devops ` Delete user "rocky" from group "devops"  -d means delete
- `gpasswd -M [<user1>,<user2>] <groupname> ` Eg. `gpasswd -M sanjay,ram devops`  -Add multiple users to a group
- `cat /etc/group ` To see the users & groupname

- `ln -s <fileName> <SoftlinkFileName> `  To create a softlink file of a file (Shortcut)
	- Eg. `ln -s file1 filex` O/P-  lrwxrwxrwx   1 root root     5 Jan 30 11:36 filex -> file1
										
										
- `ln <fileName> <HardlinkFileName> `  To create a hardlink file of a file (BackUp File)
	- Eg. `ln file2 filez` O/P- -rw-r--r--   2 root root     0 Jan 30 11:36 filez
		
- `Note- If the original file deleted then the backup file / hardlink file will have all data`

---
### Package Related

- `httpd `				hyper text transfer protocol daemon
- `yum install httpd `	install apache server by default on RedHat Linux or AWS Linux
- `-y `  				used to mark all options to yes 
- `yum remove httpd `  	remove httpd files
- `yum update httpd `  	to update httpd files
- `service httpd start `  to start apache server
- `service httpd status `to check apache server status
- `chkconfig httpd on `  to run apache server automatically when we open our machines
- `chkconfig httpd off `  don't start apache server automatically
- `yum list installed ` To get details of all installed packages
- `which ` 	to check any package is installed or not
- `which tree ` Check tree is installed ?
- `echo ` reflect message
- `echo "hello" > file9 ` creat new file9 & add text "hello"
- `echo "namaste" >> file9 `add text "namaste" in file9
- `grep ` to find out a text present acts like Ctrl + F  
    - Eg. `grep root  /etc/password `
- `sort ` used to sort files in alphabatical order
