### Linux Commands


- `cd`	→ Navigate to the last directory you were working in.
- `cd ..`→ Go to the parent directory of current directory (mind the space between cd and ..)

- `sudo su `- `ls `- `ls -a `					-this will shhow hidden files + non hidden files
- `ls -l `       				-long list 
- `ls -al `- `cat file1 `
- `cat > file2 `	write your text & to save press ctrl+D 

- `cat >> file1 ` 				-to add text in file (this will not delete any existing text , it will just - `add new text)

- `cat file1 file2 > file3 ` 	-move data of file1 & file2 to file3

- `stat <fileName> ` 			-to see the file modification history

- `touch file3 `- `touch -a file3 `
- `vi file5 `	root@ip-172-31-45-135:/home/ubuntu# vi file5
	//editor screen will display
	press i -> to see insert option & can able to insert text
	swastik  //add required texts
	press  ->to go out from insert option (insert text will not be display)
	type :wq -> press enter // w-save, q-quit go out from editor screen

- `nano file5 `	root@ip-172-31-45-135:/home/ubuntu# nano file5
	//new editor will open
	swastik   // enter desired texts
	Ctrl+X //to exit from editor 
	//Press Y to confirm


- `mkdir `					-used to create a directory
- `mkdir dir1/dir2 `			-To create directory inside another directory(slash refered to separation)
- `cd ../../ `					-To navigate from dir2 to root dir
- `touch .file1 `			-add . dot before any file/directory to make it hideden 
- `mkdir  .stage `			-add . dot before any file/directory to make it hideden

- `cp file1 file2 `				-copy data from file1 to file2
- `mv file1 dir2 `				-move (cut & paste) file1 to directory dir2
- `mv file1 myFile `			-To rename file1 with myFile (myFile a new file created  & file1 data moved - `to myFile
- `mv <fileName> <dir name> `   -Move file to a directory
- `mv <dir name> <dir name> `  	-Move directory to inside of another directory
- `cp -p source destination `	-Will copy the file from source to destination. -p stands for preservation. It
								preserves the original attributes of file while copying like file owner, timestamp,
								group, permissions etc.
- `cp -R source_dir `			-destination_dir Will copy source directory to specified destination recursively.
- `mv file1 file2  `			-In Linux there is no rename command as such. Hence mv moves/renames the
								file1 to file2.
- `rm -i filename ` 			-Asks you before every file removal for confirmation. IF YOU ARE A NEW USER
								TO LINUX COMMAND LINE, YOU SHOULD ALWAYS USE rm -i. You can specify multiple files.
- `rm -R dir-name  `   			-Will remove the directory dir-name recursively.
- `rm -rf dir-name    			-Will remove the directory dir recursively, 
								ignoring non-existent files and will never prompt for anything. BE CAREFUL USING THIS COMMAND! You can specify multiple directories.
- `rmdir dir-name ` 			-Will remove the directory dir-name, if it's empty. This command can only remove empty directories.



- `mkdir -p dir-name/dir-name ` 	-Create a directory hierarchy. Create parent directories as needed, if they don't
								exist. You can specify multiple directories.

- `rmdir `      					-to remove the specified directory  if it's empty
- `rmdir -p ` 					-Remove both the Parent & Child Directory
- `rmdir -pv `   				-Remove all parent & sub directories along with the verbox
- `rm -rf `  					-Removes files (empty / non empty) & directories
- `rm -rp `   					-Removes non empty diretories including parent & sub directories
- `rm -r `  						-Removes Empty Directories
----
- `whoami ` 						-Username of the users logged in at the terminal.
- `hostname ` 					-Display hostname of the system /ec2 instance/machine details.
- `hostname -f ` 				-Displays Fully Qualified Domain Name (FQDN) of the system.
- `hostname i `					-to seee only ip address
- `passwd ` 						-Change password of current user.
- `pwd ` 						-Get the full path of the current working directory.
- `ipconfig `					-used on windows to get ip address & all other ip ddress of i/o devices of - `machine `
- `ifconfig `					-used on linux to get ip address  & all other ip ddress of i/o devices of - `machine

- `cat /etc/os-release ` 		-to see details of OS 
- `yum ` 						-yellodog update modified //used to install or uninstall any pakage / software

- `httpd `						-hyper text transfer protocol daemon
- `yum install httpd `			-install apache server by default on RedHat Linux or AWS Linux

- `-y `  						-used to mark all options to yes 
- `yum remove httpd `  			-remove httpd files
- `yum update httpd `  			-to update httpd files

- `service httpd start `  		-to start apache server
- `service httpd status `		-to check apache server status

- `chkconfig httpd on `  		-to run apache server automatically when we open our machines
- `chkconfig httpd off `  		-don't start apache server automatically

- `yum list installed ` 			-to get details of all installed packages

- `which ` 						-to check any package is installed or not
- `which tree ` 					-check tree installed ?

- `echo ` 						-reflect message
								echo "hello " 

- `echo "hello" > file9 ` 		-creat new file9 & add text "hello"

- `echo "namaste" >> file9 ` 	-add text "namaste" in file9

- `grep ` 						-to find out a text present acts like Ctrl + F
								grep root  /etc/password

- `sort ` 						-used to sort files in alphabatical order
---

- `useradd rocky ` 				- Create a user named "rocky"
- `groupadd devops ` 			- Create a group named "devops"

- `gpasswd -a rocky devops ` 	-Add user "rocky" to group "devops"
- `gpasswd -M <user1> <user2> <groupname> `  -Add multiple users to a group

- `cat /etc/group ` 				-To see the users & groupname

- `ln -s <fileName> <SoftlinkFileName> ` -To create a softlink file of a file
										ln -s file1 softlink1 -> lrwxrwxrwx 1 root root 5 Dec 26 11:35 softlink1 -> file1
										
										
- `ln <fileName> <HardlinkFileName> `  - To create a hardlink file of a file
										ln file2 hardlink2		
- `note- if u delete the original file also the backup file / hardlink file will have all data `

- `tar comand `
- `gzip command `
- `wget command `