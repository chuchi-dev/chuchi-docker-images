FROM debian:stable-slim

SHELL ["/bin/bash", "-c"]

# Install necessary packages and Bash shell
RUN apt update
RUN apt install -y curl wget
# cleanup
RUN apt clean

# Install riji
RUN wget -O /usr/local/bin/riji https://github.com/chuchi-dev/riji/releases/latest/download/riji
RUN chmod +x /usr/local/bin/riji

RUN riji --version

RUN adduser --disabled-password --shell /bin/bash release
USER release
ENV HOME="/home/release"
WORKDIR /home/release

CMD ["/bin/bash"]
