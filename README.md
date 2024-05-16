# Welcome !
This is a small project about some small CTFs. I made them on Docker to learn how it works.

# How to play them ?
## Install
You will have to install Docker on your computer : https://docs.docker.com/engine/install/.

Be sure to install Docker-compose as well : `sudo apt install docker-compose`.

Once you have these two things installed, you can install images of CTFs you want to play : `docker pull jstnvltt/ctf_[NUMBER]`.

## Run the machine
Finally, run the docker-compose file corresponding to the CTF by going in the repository corresponding and executing : `docker-compose up`.

By default, these CTFs are accessible with **SSH on localhost port 8888**. 
You can change it for your own convenience by executing instead : `SSH_PORT=[YOUR_PORT] docker-compose up`.
## Play
You can then connect to the machine with SSH : `ssh -p [PORT] [USER]@localhost`

The username and password for each CTF are **user[CTF_NUMBER]**. 

## Example
You want to do the first CTF.

After installing Docker and docker-compose, you install the first CTF by executing `docker pull jstnvltt/ctf_1`.

You go on the ctf_1/ folder and execute `docker-compose up`.

Then, you execute `ssh -p 8888 user1@localhost` and enter `user1` as password.

You are now connected to the first CTF.

Have fun !

## Solutions
You can find every ctf solution on their respective folder, in the file `Solution.md`. In addition, an overview of all CTFs is possible with the file `Overview.md`. 