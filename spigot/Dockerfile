FROM java:8
MAINTAINER Toon Sevrin twan123@live.be

RUN groupadd -g 1000 minecraft && /
    useradd -g minecraft -u 1000 -r -M minecraft
    
RUN mkdir -p /opt/minecraft/jars /opt/minecraft/plugins
RUN COPY spigot /usr/local/bin/
    
EXPOSE 25565

VOLUME ["/opt/minecraft"]

ENTRYPOINT ["/usr/local/bin/spigot"]
CMD ["run"]
