FROM ubuntu
MAINTAINER wkf <Will Farrell>

RUN apt-get install -y curl git
RUN touch //.bash_profile
RUN curl https://raw.github.com/creationix/nvm/master/install.sh | sh
RUN echo 'nvm install 0.10.20' | bash -l
RUN ln -s //.nvm/v0.10.20/bin/npm /usr/local/bin/npm
RUN ln -s //.nvm/v0.10.20/bin/node /usr/local/bin/node

ENTRYPOINT ["node"]
