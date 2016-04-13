# mcservers
## Description
Exorath/mcservers contains docker images to run bungeecord and spigot stateless. This means that the data within the container has no value and will not be saved (Except the server jar if it does not exist yet).

## How it works
The persistent volume in spigot contains:
  {VOLUME}/global
    Here you place files and folders that should be copied onto every server's root (fe. plugins). Make sure to modify the eula.txt file on the first startup.
  {VOLUME}/jars
    You should not touch this directory, jars are automatically loaded.
  {VOLUME}/games/{MC_GAME}
    Here your game specific files and folders belong, these will be copied to the server's root as well. The MC_GAME should be passed as an environment value.
The persistent volume in bungeecord contains:
  {VOLUME}/global
    Here you place files and folders that should be copied onto every server's root (fe. plugins).
    {VOLUME}/jars
    You should not touch this directory, jars are automatically loaded.
