# Welcome !
This is a small project about some small CTFs. I made them on Docker to learn how it works.

# How to play them ?
You will have to install Docker : https://docs.docker.com/engine/install/.

Be sure to install Docker-compose as well : `sudo apt install docker-compose`.

Once you have these two things installed, you will need to install locally the base necessary to run these CTFs : `docker pull jstnvltt/ctf_base`.

Then, you can install images of CTFs you want to play : `docker pull jstnvltt/ctf_[NUMBER]`.

Finally, run the docker-compose file corresponding to the CTF by going in the right repository and executing : `docker-compose up`.

Have fun !
