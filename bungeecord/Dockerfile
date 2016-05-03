FROM java:8
MAINTAINER Toon Sevrin <twan123@live.be>

# Create user to run spigot as, this will make sure permissions work as well
RUN useradd -s /bin/bash -d /opt/bungee -m bungeecord

# Install rsync that will allow us to sync from volumes
RUN apt-get update && apt-get install -y curl rsync tmux && rm -rf /var/lib/apt/lists/* \

# Create location for bungeecord persistent files
VOLUME ["/opt/bungeecord"]

# Copy the execution script, make sure it can be executed and set it as entrpoint
COPY ./bungeecord /usr/local/bin/
RUN chmod a+x /usr/local/bin/bungeecord
ENTRYPOINT ["/usr/local/bin/bungeecord"]
