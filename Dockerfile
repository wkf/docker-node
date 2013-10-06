FROM ubuntu
MAINTAINER wkf <Will Farrell>

RUN apt-get install -y wget git
RUN touch //.bash_profile
RUN wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
RUN nvm install 0.10.20

ENTRYPOINT ['node']