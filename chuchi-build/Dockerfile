FROM debian:stable-slim

SHELL ["/bin/bash", "-c"]

# Install necessary packages and Bash shell
RUN apt update
RUN apt install -y build-essential libssl-dev curl wget cmake pkg-config
# Install lts node
RUN apt install -y nodejs npm
# cleanup
RUN apt clean

# Install riji
RUN wget -O /usr/local/bin/riji https://github.com/chuchi-dev/riji/releases/latest/download/riji
RUN chmod +x /usr/local/bin/riji

RUN adduser --disabled-password --shell /bin/bash build
USER build
ENV HOME="/home/build"
WORKDIR /home/build

# Install latest Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/home/build/.cargo/bin:${PATH}"

# install wasm
RUN rustup target add wasm32-unknown-unknown
RUN cargo install wasm-bindgen-cli

RUN node --version && npm --version && cargo --version && riji --version && wasm-bindgen --version

CMD ["/bin/bash"]
