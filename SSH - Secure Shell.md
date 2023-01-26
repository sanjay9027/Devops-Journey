# SSH - Secure Shell

---

- What is SSH?
    - Full form → secure shell
    - Its works as a communication protocol & helps to connect with a remote computer
    - We can do anything on remote computer
        - File changes
        - Data changes
        - Setting up web servers
    - Main feature → Traffic is encrypted (thats why called secure shell)
    - Used mostly in the terminal/command line
- Client/Server Communication
    - `SSH` → client
    - `SSHD` → server (OpenSSH Daemon)
        - listens for SSH connections
        - servers have `SSHD` config files
    - Servers have  `SSHD` installed & running → required to make a connection using `SSH`
- Authentication Methods
    - Authenticating servers using `ssh`
    - Ways:
        1. **Password**
            - default method
            - creating a user on a remote server & logging in using ssh & the password for that use
            - Example:
                
                ```bash
                ssh kunal@192.168.1.29
                ```
                
        2. **Public/Private Key Pair**
            - recommended way to logging in to the remote server
            - we can generate public & private keys
            - this is a safer approach as compared to having passwords
        3. **Host Based**
            - Pre-defining the hosts that are allowed to connect to a machine
            - Defined in a file called as **`known_hosts`**
                - client file  containing all remotely connected known hosts
                , and the ssh client uses this file. This file authenticates for the client to the server they are connecting to. The known_hosts file contains the host public key for all known hosts.
- Generating `SSH` keys
    - Command used:
        
        ```bash
        ssh-keygen
        ```
        
        - `~/.ssh/id_rsa` (Private Key)
        - `~/.ssh/id_rsa.pub` (Public Key)
    - Public key goes into the server → in `authorized_keys` file
- For Windows users
    - Windows 10 supports native SSH
    - Git Bash & other terminal programs include `ssh` command & other UNIX tools

---

## Hands-On & Cheat Sheet
