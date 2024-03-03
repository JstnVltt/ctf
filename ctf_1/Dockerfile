FROM ctf_base:latest

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/g;' /etc/ssh/sshd_config && service ssh restart


# Adding a new user
ARG USER_NAME=user1

# Creation of user1 
RUN useradd -m -s /bin/bash $USER_NAME

# Defining a password
RUN echo "$USER_NAME:$USER_NAME" | chpasswd

# Change of repertory
RUN usermod -d /home/$USER_NAME $USER_NAME 

# Change of owner 
RUN chown $USER_NAME:$USER_NAME /home/$USER_NAME 

# Change permissions of /user1
RUN chmod 700 /home/$USER_NAME 

# Creating CTF
RUN touch /home/user1/user.txt && echo "Welcome to the first CTF ! To complete it, you need to find another file. Maybe you will need to search to the root of the problem..." > /home/user1/user.txt \
&& touch /root/root.txt && echo "Congratulation ! Here is your flag : CTF{Y0Ur_fIrsT_Fl4g}" > /root/root.txt \
&& chmod +rx /root

CMD ["echo", "CTF running on port $SSH_PORT (22 by default)"]

#USER $USER_NAME
WORKDIR /home/$USER_NAME