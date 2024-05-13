# GBA Compiler Docker

This docker image compiles and installs the agbcc compiler into the game and compiles it.

## Building

Nothing special

`docker build -t gba-compiler:latest .`

## Running

You need to bind mount the game to `/gbagame`

`docker run -it --rm -v $(pwd):/gbagame gba-compiler:latest`