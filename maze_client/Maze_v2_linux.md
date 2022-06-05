
## `Maze_v2_linux.zip`

First, we download the game client and then we patch the masterserver URL in which the game connects to.

```bash
wget https://web.archive.org/web/20200620201321/https://static.allesctf.net/challenges/a55b8a3e191c55ebea44fb126bee8b66cac3ac8d2229a725c8544787fad79e0c/Maze_v2_linux.zip
unzip Maze_v2_linux.zip

python3 -c 'offset=0x1b95c; f=open("./Maze_v2_Data/il2cpp_data/Metadata/global-metadata.dat", "rb+"); f.seek(offset); f.write(b"maze.liveoverflo:8000"); f.close();'
```

Next, we modify `/etc/hosts` file and add the following two lines for the masterserver and gameserver correspondingly:

```txt
127.0.0.1     maze.liveoverflo
127.0.0.1     game.liveoverflo
```
