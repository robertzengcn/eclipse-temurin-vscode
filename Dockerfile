FROM maven:3.8.2-eclipse-temurin-17
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y inotify-tools dos2unix
ENV APP=/app
RUN mkdir -p $APP
# RUN useradd -ms /bin/bash vscode
# RUN chown -R vscode:vscode $APP
# USER vscode
WORKDIR $APP