FROM java:8
MAINTAINER Toon Sevrin twan123@live.be

#Create a group and user for the server environment
RUN groupadd -g 1000 minecraft
RUN useradd -g minecraft -u 1000 -r -M minecraft

#Create location for the server jars and plugins
VOLUME ["/opt/minecraft"]
RUN mkdir -p /opt/minecraft/jars /opt/minecraft/plugins

#Exposes local port, must be exposed publically with -p xxxx:25565
EXPOSE 25565

#Copy the execution script, make sure it can be executed and set it as entrpoint
COPY ./spigot /usr/local/bin/
RUN chmod a+x /usr/local/bin/spigot
ENTRYPOINT ["/usr/local/bin/spigot"]
