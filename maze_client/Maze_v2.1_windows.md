
## `Maze_v2.1_windows.zip`

First, we download the game client and then we patch the masterserver URL in which the game connects to.

1. Download the [Windows v2.1 game clinet](https://web.archive.org/web/20200620201321/https://static.allesctf.net/challenges/95a402a5b93a4424bcba9a46a0c9ef153025da6fe4aa57c6d35769d0c2a70878/Maze_v2.1_windows.zip)
2. Unzip `Maze_v2.1_windows.zip`
3. Run the following Python3 command inside the directory with the unzipped contents:
    ```bash
    python3 -c 'offset=0x1c339; f=open("./Maze_Data/il2cpp_data/Metadata/global-metadata.dat", "rb+"); f.seek(offset); f.write(b"maze.liveoverflo:8000"); f.close();'
    ```
    This will patch the masterserver URL in which the game connects to.

Next, modify `C:\Windows\System32\drivers\etc\hosts` file and add the following two lines for the masterserver and gameserver correspondingly:

```txt
127.0.0.1     maze.liveoverflo
127.0.0.1     game.liveoverflo
```

Now you can run the game: `Maze.exe`
