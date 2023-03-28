FROM rust:latest
# essentials
RUN apt update && apt install -y --no-install-recommends build-essential libreadline-dev unzip curl wget git ca-certificates
# Lua
COPY lua-5.1.5.tar.gz lua-5.1.5.tar.gz
RUN tar zxf lua-5.1.5.tar.gz && cd lua-5.1.5 && make linux test && make install && cd / && rm  lua-5.1.5.tar.gz
# Luarocks
COPY luarocks-3.8.0.tar.gz luarocks-3.8.0.tar.gz
RUN tar zxpf luarocks-3.8.0.tar.gz && cd luarocks-3.8.0 && ./configure --lua-version="5.1" && make && make install && cd / && rm luarocks-3.8.0.tar.gz
# Rocks
RUN luarocks install base64 && luarocks install dkjson && luarocks install luafilesystem && luarocks install lub && luarocks install sha1 && luarocks install xml && luarocks install inspect

WORKDIR /myapp
COPY src src
COPY Cargo.toml Cargo.toml
COPY PathOfBuilding PathOfBuilding
RUN cargo build
WORKDIR /myapp/PathOfBuilding/src