FROM java:8
MAINTAINER Toon Sevrin <twan123@live.be>

# GOSU is a simple tool grown out of the simple fact that su and sudo have very strange and often annoying TTY and signal-forwarding behavior. 
RUN gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
    && apt-get update && apt-get install -y curl rsync tmux && rm -rf /var/lib/apt/lists/* \
    && curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)" \
    && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture).asc" \
    && gpg --verify /usr/local/bin/gosu.asc \
    && rm /usr/local/bin/gosu.asc \
    && chmod +x /usr/local/bin/gosu
 
# Create a group and user for the server environment   
RUN groupadd -g 1000 bungeecord
RUN useradd -g bungeecord -u 1000 -r -M bungeecord

# Exposes local port, must be exposed publically with -p xxxx:25565
EXPOSE 25565

# Create location for bungeecord persistent files
VOLUME ["/opt/bungeecord"]
RUN mkdir -p /opt/bungeecord

# Copy the execution script, make sure it can be executed and set it as entrpoint
COPY ./bungeecord /usr/local/bin/
RUN chmod a+x /usr/local/bin/bungeecord
ENTRYPOINT ["/usr/local/bin/bungeecord"]
