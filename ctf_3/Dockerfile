FROM jstnvltt/ctf_base:latest

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/g;' /etc/ssh/sshd_config && service ssh restart


# Adding a new user
ARG USER_NAME=user3

# Creation of user
RUN useradd -m -s /bin/bash $USER_NAME

# Defining a password
RUN echo "$USER_NAME:$USER_NAME" | chpasswd

# Change of repertory
RUN usermod -d /home/$USER_NAME $USER_NAME 

# Change of owner 
RUN chown $USER_NAME:$USER_NAME /home/$USER_NAME 

# Change permissions of /user
RUN chmod 700 /home/$USER_NAME 

# Creating CTF
RUN touch /home/$USER_NAME/user.txt && echo "You will need to find deeper than that !" > /home/$USER_NAME/user.txt \
&& echo "$USER_NAME ALL=(ALL) NOPASSWD:/bin/find" >> /etc/sudoers \
&& touch /root/root.txt && echo "Congratulation ! Here is your flag : CTF{f1Nd_th3_TrUtH}" > /root/root.txt

#USER $USER_NAME
WORKDIR /home/$USER_NAME