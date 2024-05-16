# Solution of ctf_1
## Goal
This first challenge is designed to full beginners in linux privilege escalation and doesn't require any specific knowledge or tools. This is meant to learn the primary goal of a standard CTF.

A CTF has generally two files : `user.txt` and `root.txt`. `user.txt` is usually found in the home repertory of the main user of the machine (`/home/user1` for example).
This CTF objective is to find where can be the other file.  

## Step by step
When you arrive on the machine, the fisrt thing I like to do is to enumerate files in your repertory with `ls`.

We see a file called `user.txt`. 

Let's open it to have more information.

>
    user1@a9a870c1b50a:~$ ls
    user.txt
    user1@a9a870c1b50a:~$ cat user.txt 
    Welcome to the first CTF ! To complete it, you need to find another file. Maybe you will need to search to the root of the problem...


It seams that we need to go to "the root". In linux, it could mean to go to the very first directory.
>
    user1@a9a870c1b50a:/$ ls
    bin   ctf_config  etc   lib    lib64   media  opt   root  sbin  sys  usr
    boot  dev         home  lib32  libx32  mnt    proc  run   srv   tmp  var


When we go here, it seams that one directory is named "root", like in the tips. Let's go find what is inside.

>
    user1@a9a870c1b50a:/root$ ls
    root.txt

We found it ! Now, you can open this file to claim your flag !