# Use Alpine as the base image
FROM debian:stable-slim

SHELL ["/bin/bash", "-c"]

# Install necessary packages and Bash shell
RUN apt update
RUN apt install -y build-essential libssl-dev curl wget bash

# Install latest Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN cargo --version

# Install lts node
RUN apt install -y nodejs npm

RUN node --version
RUN npm --version

# Install riji
RUN wget -O /usr/local/bin/riji https://github.com/fire-lib/riji/releases/latest/download/riji
RUN chmod +x /usr/local/bin/riji

RUN riji --version

# cleanup
RUN apt clean

# # Create a new user and switch to it
# RUN adduser -D -s /bin/bash user
# USER user
# WORKDIR /home/user
# 
# # Make sure the user environment has access to fnm, node and cargo
# ENV PATH="/root/.fnm:/root/.cargo/bin:$PATH"
# 
# # Set Bash as the default shell for the user
# SHELL ["/bin/bash", "-c"]

CMD ["/bin/bash"]